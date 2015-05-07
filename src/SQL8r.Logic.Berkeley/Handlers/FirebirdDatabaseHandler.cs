using System;
using System.ComponentModel.Composition;
using System.Data;
using System.IO;
using FirebirdSql.Data.Client;
using System.Reflection;
using FirebirdSql.Data.FirebirdClient;
using log4net;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

// TODO wait until it no longer requires elevation

namespace SQL8r.Logic.Firebird.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.FireBird2, "1.0", false)]
    public class FirebirdDatabaseHandler : IDatabaseManager
    {
        private static ILog log = LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
        private ServerConnectionSettings _settings;

        private static readonly string sqlDatabases = ResourceReader.GetResourceSql("SQL8r.Logic.Firebird.Queries.UI.GetDatabaseTablesViewsIndex.sql");
        private static readonly string sqlColumns = ResourceReader.GetResourceSql("SQL8r.Logic.Firebird.Queries.UI.GetTableColumns.sql");

        private static readonly string sqlAddColumn = ResourceReader.GetResourceSql("SQL8r.Logic.Firebird.Queries.UI.AddColumn.sql");
        private static readonly string sqlAlterColumn = ResourceReader.GetResourceSql("SQL8r.Logic.Firebird.Queries.UI.AlterColumn.sql");

        //public SQLiteDatabaseHandler()
        //{
        //}

        //public SQLiteDatabaseHandler(ServerConnectionSettings settings)
        //{
        //    _settings = settings;
        //}

        #region IDatabaseManager Members

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public string ConnectionString
        {
            get
            {
                return string.Format("Database={0};", _settings.DatabaseName);
            }
        }

        public System.Data.DataSet ExecuteQuery(string serverName, string databaseName, string sql)
        {
            throw new NotImplementedException();

        }

        public void ExecuteNonQuery(string serverName, string databaseName, string sql)
        {
        }

        public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
        {
            //	const string inventoryDbName = @"C:\Users\niklas\Desktop\inventory.db";
            //	const string inventoryDbName = @"C:\Users\niklas\Desktop\mydb.fdb";

            //	string connectionString = "ServerType=1;User=SYSDBA;Password=masterkey;Dialect=3;Database=";

            //	FbDataAdapter da = new FbDataAdapter("SELECT * FROM table1", connectionString + this.textBox1.Text);

            string sql = "SELECT * FROM {0};";
            string dbSQL = string.Format(sql, "table1");

            string dbConn = ConnectionString;
            dbConn = @"ServerType=1;User=SYSDBA;Password=masterkey;Dialect=3;Database=MYDB.FDB";
            FbConnection conn = new FbConnection(dbConn);


            conn.Open();
            //            conn.ChangeDatabase(database.Name);
            var cmd = new FbCommand(dbSQL, conn);

            var sdaDatabases = new FbDataAdapter(cmd);

            if (editable)
            {
                var scb = new FbCommandBuilder(sdaDatabases);
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
        }



        public Sql8rServer GetServer()
        {

            var s = new Sql8rServer(_settings);


            Sql8rDatabase db = new Sql8rDatabase("MYDB.FDB", 0);
            Sql8rTable t = new Sql8rTable("table1", "", false, 0);
            db.Tables.Add(t);
            s.Databases.Add(db);

            return s;
        }

        public void GetServerOtherStuff(Sql8rDatabase db)
        {
            //throw new System.NotImplementedException();
        }

        public Exception TestConnection()
        {
            throw new NotImplementedException();
        }

        public void CreateDatabase(string fileName, bool overwrite)
        {
            //            string dbConn = _settings.GetConnectionString();
            string dbConn = string.Format(@"ServerType=1;Database={0}", fileName);

            FileStream stream = File.Create(fileName);
            stream.Close();
            FbConnection.CreateDatabase(dbConn, overwrite);
        }

        public void DropDatabase(string fileName)
        {
            string dbConn = string.Format(@"ServerType=1;Database={0}", fileName);
            FbConnection.DropDatabase(dbConn);
        }

        #endregion
    }
}