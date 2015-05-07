using System;
using System.ComponentModel.Composition;
using System.Data;
using System.Data.Odbc;
using System.Globalization;
using System.IO;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Odbc.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.ODBCExcel2003, "1.0", true)]
    public class OdbcExcelDatabaseHandler : IDatabaseManager
    {
        private ServerConnectionSettings _settings;
        public OdbcExcelDatabaseHandler()
        {
        }
        public OdbcExcelDatabaseHandler(ServerConnectionSettings settings)
        {
            _settings = settings;
        }

        #region IDatabaseManager Members

        public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
        {
            string dbConn = ConnectionString;
            string dbSQL = string.Format("SELECT * FROM [{0}]", table.Name);


            var sdaDatabases = new OdbcDataAdapter(dbSQL, dbConn);

            var dsDatabases = new DataTable("TableContent");
            sdaDatabases.Fill(dsDatabases);

            var query = new Query(_settings, server.Name, database.Name, dbSQL, dsDatabases);
            return query;
            //return dsDatabases;
        }

        public Query GetViewContent(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            throw new NotImplementedException();
        }

        public Query GetViewQuery(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            throw new NotImplementedException();
        }

        public Query GetTableQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
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
            throw new System.NotImplementedException();
        }

        public Query GetAlterColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rColumn column)
        {
            throw new System.NotImplementedException();
        }

        public Query GetAddIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            throw new System.NotImplementedException();
        }

        public Sql8rServer GetServer()
        {
            var s = new Sql8rServer(_settings);


            string dbConn = ConnectionString;
            setServerInfo(ref s, dbConn);
            OdbcConnection cn = new OdbcConnection(dbConn);
            cn.Open();
            //            DataTable schema = cn.GetSchema();  // collectionName, nbrOfRestriction, nbrOfIden

            //            foreach (DataRow row in schema.Rows)
            //          {
            //            string collection = row["CollectionName"].ToString();

            // "MetaDataCollections" "DataSourceInformation"
            // "DataTypes" "Restrictions" "ReservedWords"
            // "Columns" "Indexes" "Procedures" "ProcedureColumns"
            // "ProcedureParameters" "Tables"
            //      }

            Sql8rDatabase db = new Sql8rDatabase("main", 0);
            s.Databases.Add(db);

            DataTable dtColumns = cn.GetSchema("Columns");
            DataTable dtTables = cn.GetSchema("Tables");  // collectionName, nbrOfRestriction, nbrOfIden

            foreach (DataRow row in dtTables.Rows)
            {
                string tCategory = row["TABLE_CAT"].ToString();
                string tSchema = row["TABLE_SCHEM"].ToString();
                string tName = row["TABLE_NAME"].ToString();
                bool tIsSystem = row["TABLE_TYPE"].ToString().ToString().Equals("SYSTEM TABLE", StringComparison.InvariantCultureIgnoreCase) ? true : false;
                string tRemarks = row["REMARKS"].ToString();

                Sql8rTable t = new Sql8rTable(tName, tSchema, tIsSystem, 0);

                int id = 0;
                foreach (DataRow column in dtColumns.Select(string.Format("TABLE_NAME = '{0}'", t.Name)))
                {
                    string taSchema = column["TABLE_SCHEM"].ToString();
                    string taName = column["TABLE_NAME"].ToString();
                    string cName = column["COLUMN_NAME"].ToString();
                    string cDataType = column["DATA_TYPE"].ToString();
                    string cTypeName = column["TYPE_NAME"].ToString();
                    int cSize = int.Parse(column["COLUMN_SIZE"].ToString());


                    Sql8rColumn c = new Sql8rColumn(cName, false, cTypeName, cSize, id++);
                    t.Columns.Add(c.ObjectId, c);
                }
                db.Tables.Add(t);
            }


            return s;
        }

        private void setServerInfo(ref Sql8rServer s, string dbConn)
        {
            var cn = new OdbcConnection(dbConn);
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
            var cn = new OdbcConnection(ConnectionString);
            try
            {
                cn.Open();
                return null;
            }
            catch (OdbcException e)
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
            //FileStream stream = File.Create(fileName);
            //stream.Close();
            //            throw new System.NotImplementedException();
        }

        public void DropDatabase(string fileName)
        {
            File.Delete(fileName);
        }

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public string ConnectionString
        {
            get
            {
                return string.Format("DRIVER={{Microsoft Excel Driver (*.xls)}};DBq={0};", _settings.DatabaseName);
            }
        }

        public DataSet ExecuteQuery(string serverName, string databaseName, string sql)
        {

            //     throw new NotImplementedException();


            string dbConn = ConnectionString;

            var cn = new OdbcConnection(dbConn);
            cn.Open();

            string dbSQL2 = sql;
            OdbcCommand cmd2 = cn.CreateCommand();
            cmd2.CommandText = dbSQL2;
            var sdaDatabases = new OdbcDataAdapter(cmd2);

            var dsDatabases = new DataSet("QueryResult");
            sdaDatabases.Fill(dsDatabases);

            return dsDatabases;
        }

        public void ExecuteNonQuery(string serverName, string databaseName, string sql)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

}