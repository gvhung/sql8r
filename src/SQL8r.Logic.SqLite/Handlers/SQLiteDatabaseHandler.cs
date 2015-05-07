using System;
using System.ComponentModel.Composition;
using System.IO;
using System.Data;
using System.Data.SQLite;
using System.Reflection;
using log4net;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SQLite.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.SQLite3, "1.0", true)]
    public class SQLiteDatabaseHandler : IDatabaseManager
    {
        private static ILog log = LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
        private ServerConnectionSettings _settings;

        private static readonly string sqlDatabases = ResourceReader.GetResourceSql("SQL8r.Logic.SQLite.Queries.UI.GetDatabaseTablesViewsIndex.sql");
        private static readonly string sqlColumns = ResourceReader.GetResourceSql("SQL8r.Logic.SQLite.Queries.UI.GetTableColumns.sql");

        private static readonly string sqlAddColumn = ResourceReader.GetResourceSql("SQL8r.Logic.SQLite.Queries.UI.AddColumn.sql");
        private static readonly string sqlAlterColumn = ResourceReader.GetResourceSql("SQL8r.Logic.SQLite.Queries.UI.AlterColumn.sql");


        #region IDatabaseManager Members

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public string ConnectionString
        {
            get
            {
                return string.Format("DATA SOURCE={0};", _settings.DatabaseName);
            }
        }

        public DataSet ExecuteQuery(string serverName, string databaseName, string sql)
        {
            string dbConn = ConnectionString;

            using (var cn = new SQLiteConnection(dbConn))
            {
                cn.Open();

                string dbSQL2 = sql;
                SQLiteCommand cmd2 = cn.CreateCommand();
                cmd2.CommandText = dbSQL2;
                var sdaDatabases = new SQLiteDataAdapter(cmd2);

                var dsDatabases = new DataSet("QueryResult");
                sdaDatabases.Fill(dsDatabases);

                return dsDatabases;
            }
        }

        public void ExecuteNonQuery(string serverName, string databaseName, string sql)
        {
            string dbConn = ConnectionString;
            string dbSQL = string.Format("{0}", sql);

            var sconDatabases = new SQLiteConnection(dbConn);
            var cmdDatabases = new SQLiteCommand(dbSQL, sconDatabases);
            cmdDatabases.ExecuteNonQuery();
            sconDatabases.Close();
        }

        public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
        {
            string sql = "SELECT * FROM {0};";
            string dbSQL = string.Format(sql, table.Name);

            string dbConn = ConnectionString;

            using (var conn = new SQLiteConnection(dbConn))
            {
                conn.Open();

                var cmd = new SQLiteCommand(dbSQL, conn);

                var sdaDatabases = new SQLiteDataAdapter(cmd);

                if (editable)
                {
                    var scb = new SQLiteCommandBuilder(sdaDatabases);
                    sdaDatabases.UpdateCommand = scb.GetUpdateCommand();
                    sdaDatabases.InsertCommand = scb.GetInsertCommand();
                    sdaDatabases.DeleteCommand = scb.GetDeleteCommand();
                }


                var dsDatabases = new DataTable("TableContent");
                sdaDatabases.Fill(dsDatabases);

                var query = new Query(_settings, server.Name, database.Name, dbSQL, dsDatabases);
                query.Adapter = sdaDatabases;
                return query;
            }
        }

        public Query GetViewContent(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            throw new NotImplementedException();
        }

        public Query GetTableQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            throw new NotImplementedException();
        }

        public Query GetViewQuery(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            throw new NotImplementedException();
        }

        public Query GetFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
        {
            throw new NotImplementedException();
        }

        public Query GetProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
        {
            throw new NotImplementedException();
        }

        public Query GetExecuteFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
        {
            throw new NotImplementedException();
        }

        public Query GetExecuteProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
        {
            throw new NotImplementedException();
        }

        public Query GetAddColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            //    throw new System.NotImplementedException();
            string sql = string.Format(sqlAddColumn, table.GetFullObjectName());
            var query = new Query(_settings, server.Name, database.Name, sql);
            return query;
        }

        public Query GetAlterColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rColumn column)
        {
            //    throw new System.NotImplementedException();
            string sql = string.Format(sqlAlterColumn, table.GetFullObjectName(), column.Name);
            var query = new Query(_settings, server.Name, database.Name, sql);
            return query;
        }

        public Query GetAddIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            throw new System.NotImplementedException();
        }

        private void addColumns(IColumnedObject table)
        {
            string sql = string.Format(sqlColumns, table.Name);
            string dbConn = ConnectionString;
            var cn = new SQLiteConnection(dbConn);
            cn.Open();
            var cmd = new SQLiteCommand(sql, cn);
            SQLiteDataReader rd = cmd.ExecuteReader(CommandBehavior.SchemaOnly);
            DataTable dt = rd.GetSchemaTable();
            rd.Close();

            foreach (DataRow dr in dt.Rows)
            {
                string columnName = dr.Field<string>("ColumnName");
                bool isKey = dr.Field<bool>("IsKey");
                string dataTypeName = dr.Field<string>("DataTypeName");
                //  string provDataTypeName = dr.Field<string>("ProviderSpecificDataType");
                short? numericPrecision = dr.Field<short?>("NumericPrecision");
                int id = dr.Field<int>("ColumnOrdinal");

                int numPres = -1;
                if (numericPrecision.HasValue)
                {
                    numPres = numericPrecision.Value;
                }

                Sql8rColumn c = new Sql8rColumn(columnName, isKey, dataTypeName, numPres, id);
                table.Columns.Add(c.ObjectId, c);
            }
        }



        public Sql8rServer GetServer()
        {
            //            string sqlDatabases = "SELECT type, name, tbl_name, rootpage, sql FROM main.SQLITE_MASTER;";

            var s = new Sql8rServer(_settings);
            string dbConn = ConnectionString;
            setServerInfo(ref s, dbConn);
            var sdaTables = new SQLiteDataAdapter(sqlDatabases, dbConn);

            var dtTables = new DataTable("TablesEtc");
            sdaTables.Fill(dtTables);

            string dbName = _settings.DatabaseName;
            if (File.Exists(_settings.DatabaseName))
            {
                dbName = Path.GetFileName(_settings.DatabaseName);
            }
            var db = new Sql8rDatabase(dbName, 0);
            s.Databases.Add(db);

            var systable = new Sql8rTable("SQLITE_MASTER", "main", true, 0);
            addColumns(systable);
            db.Tables.Add(systable);

            foreach (DataRow drTable in dtTables.Select("type = 'table'"))
            {
                string t_name = drTable.Field<string>("name");
                long t_rootpage = drTable.Field<long>("rootpage");
                //   string sql = drTable.Field<string>("sql");

                var table = new Sql8rTable(t_name, "", false, t_rootpage);
                addColumns(table);

                foreach (DataRow drIndex in dtTables.Select("type = 'index' AND tbl_name = '" + t_name + "'"))
                {
                    string i_name = drIndex.Field<string>("name");
                    long i_rootpage = drIndex.Field<long>("rootpage");

                    var index = new Sql8rIndex(i_name, false, false, i_rootpage);
                    table.Indexes.Add(index.Name, index);
                }

                db.Tables.Add(table);

                //if (type.Equals("trigger", StringComparison.InvariantCultureIgnoreCase))
                //{
                //    var trigger = new Sql8rTrigger(name, "", false);

                //}
            }

            return s;
        }

        private void setServerInfo(ref Sql8rServer s, string dbConn)
        {
            var cn = new SQLiteConnection(dbConn);
            cn.Open();
            string version = cn.ServerVersion;

            s.SetServerInfo(version, version, version, 0);
        }

        public void GetServerOtherStuff(Sql8rDatabase db)
        {
            //throw new System.NotImplementedException();
        }

        public Exception TestConnection()
        {
            var cn = new SQLiteConnection(ConnectionString);
            try
            {
                cn.Open();
                return null;
            }
            catch (SQLiteException e)
            {
                return e;
            }
            finally
            {
                cn.Close();
            }
        }

        public void CreateDatabase(string fileName, bool overwrite)
        {
            SQLiteConnection.CreateFile(fileName);
        }

        public void DropDatabase(string fileName)
        {
            File.Delete(fileName);
        }

        #endregion
    }
}