using System;
using System.ComponentModel.Composition;
using System.Data;
using System.Globalization;
using System.Text.RegularExpressions;
using MySql.Data.MySqlClient;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.MySQL.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.MySql5, "1.0", true)]
    public class MySqlDatabaseHandler : IDatabaseManager
    {
        private ServerConnectionSettings _settings;

        //public MySqlDatabaseHandler()
        //{
        //}
        //public MySqlDatabaseHandler(ServerConnectionSettings si)
        //{
        //    _settings = si;
        //}

        #region IDatabaseManager Members

        public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
        {
            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.OpenTable.sql");

            string dbConn = ConnectionString;
            string dbSQL = string.Format(sql, database.Name, table.Name);

            var mdaDatabases = new MySqlDataAdapter(dbSQL, dbConn);

            var dsDatabases = new DataTable("TableContent");
            mdaDatabases.Fill(dsDatabases);

            var q = new Query(_settings, server.Name, database.Name, dbSQL, dsDatabases);
            return q;
        }

        public Query GetViewContent(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.OpenView.sql");

            string dbConn = ConnectionString;
            string dbSQL = string.Format(sql, database.Name, view.Name);

            var mdaDatabases = new MySqlDataAdapter(dbSQL, dbConn);

            var dsDatabases = new DataTable("ViewContent");
            mdaDatabases.Fill(dsDatabases);

            var q = new Query(_settings, server.Name, database.Name, dbSQL, dsDatabases);
            return q;
        }

        public Query GetViewQuery(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
        {
            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.EditView.sql");

            string dbConn = ConnectionString;
            string dbSQL = string.Format(sql, database.Name, view.Name);

            var dtTables = new DataTable("ViewQuery");
            var mdaTables = new MySqlDataAdapter(dbSQL, dbConn);
            mdaTables.Fill(dtTables);

            DataRow drDatabase = dtTables.Rows[0];

            string def = drDatabase["Create View"].ToString();
            var q = new Query(_settings, server.Name, database.Name, def);
            return q;
        }

        public Query GetTableQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.EditTable.sql");

            string dbConn = ConnectionString;
            string dbSQL = string.Format(sql, database.Name, table.Name);

            var dtTables = new DataTable("ViewTable");
            var mdaTables = new MySqlDataAdapter(dbSQL, dbConn);
            mdaTables.Fill(dtTables);

            DataRow drDatabase = dtTables.Rows[0];

            string def = drDatabase["Create Table"].ToString();
            var q = new Query(_settings, server.Name, database.Name, def);
            return q;
        }

        public Query GetFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
        {
            string sqlFunctionHeader = string.Empty;
            string sqlFunctionBody = string.Empty;

            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                database.Name);
            MySqlDataReader myReader = null;

            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.EditFunction.sql");

            string dbSQL = string.Format(sql, function.Name);

            try
            {
                myConnection.Open();
                var myCommand = new MySqlCommand();
                myCommand.CommandText = dbSQL;
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                if (myReader.Read())
                {
                    sqlFunctionBody = myReader.GetString(2);
                }
            }
            finally
            {
                myReader.Close();
                myConnection.Close();
            }

            string viewSql = string.Format("{0}{1}{2}", sqlFunctionHeader, Environment.NewLine, sqlFunctionBody);
            var q = new Query(_settings, server.Name, database.Name, viewSql);
            return q;
        }

        public Query GetProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
        {
            string sqlProcedureHeader = string.Empty;
            string sqlProcedureBody = string.Empty;

            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                database.Name);
            MySqlDataReader myReader = null;

            string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.EditProcedure.sql");

            string dbSQL = string.Format(sql, procedure.Name);

            try
            {
                myConnection.Open();
                var myCommand = new MySqlCommand();
                myCommand.CommandText = dbSQL;
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                if (myReader.Read())
                {
                    sqlProcedureBody = myReader.GetString(2);
                }
            }
            finally
            {
                myReader.Close();
                myConnection.Close();
            }

            string viewSql = string.Format("{0}{1}{2}", sqlProcedureHeader, Environment.NewLine, sqlProcedureBody);
            var q = new Query(_settings, server.Name, database.Name, viewSql);
            return q;
        }

        public Query GetExecuteFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
        {
            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                database.Name);
            MySqlDataReader myReader = null;

            string paramsString = string.Empty;

            try
            {
                myConnection.Open();
                var myCommand = new MySqlCommand();
                myCommand.CommandText = string.Format(
                    "SHOW CREATE FUNCTION `{0}`",
                    function.Name);
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                if (myReader.Read())
                {
                    paramsString = myReader.GetString(2);
                }
            }
            finally
            {
                myReader.Close();
                myConnection.Close();
            }

            string head = string.Format("EXEC {0}", function.Name);

            var reg = new Regex(@"(?<=\x28)([^\n\r]+)(?=\x29\sRETURNS)");
            Match match = reg.Match(paramsString);
            paramsString = match.Groups[1].Value;
            char[] paramsSplitter = { ',' };
            string[] paramsSet = paramsString.Split(paramsSplitter);

            foreach (string param in paramsSet)
            {
                char[] paramPartSplitter = { ' ' };
                string[] paramPart = param.TrimStart().Split(paramPartSplitter);
                head = string.Format("{0} {1}=<{2}>", head, paramPart[0], paramPart[1]);
            }

            var q = new Query(_settings, server.Name, database.Name, head);
            return q;
        }

        public Query GetExecuteProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
        {
            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                database.Name);
            MySqlDataReader myReader = null;

            string paramsString = string.Empty;

            try
            {
                myConnection.Open();
                var myCommand = new MySqlCommand();
                myCommand.CommandText = string.Format(
                    "SHOW CREATE PROCEDURE `{0}`",
                    procedure.Name);
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                if (myReader.Read())
                {
                    paramsString = myReader.GetString(2);
                }
            }
            finally
            {
                myReader.Close();
                myConnection.Close();
            }

            string head = string.Format("EXEC {0}", procedure.Name);

            var reg = new Regex(@"(?<=\x28)([^\n\r]+)(?=\x29)");
            Match match = reg.Match(paramsString);
            paramsString = match.Groups[1].Value;
            char[] paramsSplitter = { ',' };
            string[] paramsSet = paramsString.Split(paramsSplitter);

            foreach (string param in paramsSet)
            {
                char[] paramPartSplitter = { ' ' };
                string[] paramPart = param.TrimStart().Split(paramPartSplitter);
                head = string.Format("{0} {1} {2}=<{3}>", head, paramPart[0], paramPart[1], paramPart[2]);
            }

            var q = new Query(_settings, server.Name, database.Name, head);
            return q;
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
            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = ConnectionString;

            var s = new Sql8rServer(_settings);

            MySqlDataReader myReader = null;

            try
            {
                myConnection.Open();

                var dbTable = new DataTable();
                dbTable.Locale = CultureInfo.InvariantCulture;

                string dbSQL = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.GetServerDatabases.sql");

                var myAdapter = new MySqlDataAdapter(dbSQL, myConnection);
                myAdapter.Fill(dbTable);

                foreach (DataRow row in dbTable.Rows)
                {
                    var db = new Sql8rDatabase(row.ItemArray[0].ToString(), 0);

                    string sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.GetServerTables.sql");
                    string tSQL = string.Format(sql, db.Name);

                    var myCommand = new MySqlCommand();
                    myCommand.CommandText = tSQL;
                    myCommand.CommandType = CommandType.Text;
                    myCommand.Connection = myConnection;
                    myReader = myCommand.ExecuteReader();

                    MySqlDataReader myColumnReader = null;

                    while (myReader.Read())
                    {
                        var t = new Sql8rTable(myReader.GetString(0), "", false, 0);
                        db.Tables.Add(t);

                        var myColumnConnection = new MySqlConnection();
                        myColumnConnection.ConnectionString = String.Format(
                            "{0};database={1}",
                            ConnectionString,
                            db.Name);

                        try
                        {
                            myColumnConnection.Open();

                            sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.GetServerColumns.sql");
                            string cSQL = string.Format(sql, t.Name);

                            var myColumnCommand = new MySqlCommand();
                            myColumnCommand.CommandText = cSQL;
                            myColumnCommand.CommandType = CommandType.Text;
                            myColumnCommand.Connection = myColumnConnection;
                            myColumnReader = myColumnCommand.ExecuteReader();
                            while (myColumnReader.Read())
                            {
                                var reg = new Regex(@"[a-z]+");
                                Match match = reg.Match(myColumnReader.GetString(1));

                                string colType = match.Value;

                                reg = new Regex(@"[0-9]+");
                                match = reg.Match(myColumnReader.GetString(1));

                                int maxLength = 0;

                                if (match.Value != "")
                                    maxLength = Convert.ToInt32(match.Value);

                                var c = new Sql8rColumn(myColumnReader.GetString(0),
                                                        myColumnReader.GetString(3) == "PRI",
                                                        colType, maxLength, 0);
                                t.Columns.Add(c.ObjectId, c);
                            }
                        }
                        finally
                        {
                            myColumnReader.Close();
                            myColumnConnection.Close();
                        }
                    }
                    myReader.Close();

                    myCommand.CommandText = string.Format(
                        "SHOW FULL TABLES FROM {0} WHERE Table_type = 'VIEW';",
                        db.Name);
                    myCommand.CommandType = CommandType.Text;
                    myCommand.Connection = myConnection;
                    myReader = myCommand.ExecuteReader();
                    while (myReader.Read())
                    {
                        var v = new Sql8rView(myReader.GetString(0), "", false, 0);
                        // hej Johan, breaking change: objectid
                        db.Views.Add(v);

                        var myColumnConnection = new MySqlConnection();
                        myColumnConnection.ConnectionString = String.Format(
                            "{0};database={1}",
                            ConnectionString,
                            db.Name);

                        try
                        {
                            myColumnConnection.Open();

                            sql = ResourceReader.GetResourceSql("SQL8r.Logic.MySQL.Queries.UI.GetServerColumns.sql");
                            string cSQL = string.Format(sql, v.Name);

                            var myColumnCommand = new MySqlCommand();
                            myColumnCommand.CommandText = cSQL;
                            myColumnCommand.CommandType = CommandType.Text;
                            myColumnCommand.Connection = myColumnConnection;
                            myColumnReader = myColumnCommand.ExecuteReader();
                            while (myColumnReader.Read())
                            {
                                var reg = new Regex(@"[a-z]+");
                                Match match = reg.Match(myColumnReader.GetString(1));

                                string colType = match.Value;

                                reg = new Regex(@"[0-9]+");
                                match = reg.Match(myColumnReader.GetString(1));

                                int maxLength = 0;

                                if (match.Value != "")
                                    maxLength = Convert.ToInt32(match.Value);

                                var c = new Sql8rColumn(myColumnReader.GetString(0),
                                                        myColumnReader.GetString(3) == "PRI",
                                                        colType, maxLength, 0);
                                v.Columns.Add(c.ObjectId, c);
                            }
                        }
                        finally
                        {
                            myColumnReader.Close();
                            myColumnConnection.Close();
                        }
                    }
                    myReader.Close();

                    myCommand.CommandText = "SELECT ROUTINE_NAME " +
                                            "FROM INFORMATION_SCHEMA.ROUTINES " +
                                            "WHERE ROUTINE_SCHEMA='" + db.Name + "' " +
                                            "AND ROUTINE_TYPE='PROCEDURE'" + ";";
                    myCommand.CommandType = CommandType.Text;
                    myCommand.Connection = myConnection;
                    myReader = myCommand.ExecuteReader();
                    while (myReader.Read())
                    {
                        var sp = new Sql8rProcedure(myReader.GetString(0), "", false, 0);
                        db.Procedures.Add(sp.Name, sp);
                    }
                    myReader.Close();

                    myCommand.CommandText = "SELECT ROUTINE_NAME " +
                                            "FROM INFORMATION_SCHEMA.ROUTINES " +
                                            "WHERE ROUTINE_SCHEMA='" + db.Name + "' " +
                                            "AND ROUTINE_TYPE='FUNCTION'" + ";";
                    myCommand.CommandType = CommandType.Text;
                    myCommand.Connection = myConnection;
                    myReader = myCommand.ExecuteReader();
                    while (myReader.Read())
                    {
                        var fkn = new Sql8rFunction(myReader.GetString(0), "", false, 0);
                        db.Functions.Add(fkn.Name, fkn);
                    }

                    myReader.Close();

                    s.Databases.Add(db);
                }
            }
            finally
            {
                myConnection.Close();
            }
            return s;
        }

        public void GetServerOtherStuff(Sql8rDatabase db)
        {
            throw new System.NotImplementedException();
        }

        public Exception TestConnection()
        {
            var cn = new MySqlConnection(ConnectionString);
            try
            {
                cn.Open();
                return null;
            }
            catch (Exception e)
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
            throw new System.NotImplementedException();
        }

        public void DropDatabase(string fileName)
        {
            throw new System.NotImplementedException();
        }

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public string ConnectionString
        {
            get
            {
                return string.Format("DATA SOURCE={0};USER ID={1};PASSWORD={2};", _settings.ServerName, _settings.UserName, _settings.Password);
            }
        }

        public DataSet ExecuteQuery(string serverName, string databaseName, string sql)
        {
            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                databaseName);

            var ds = new DataSet();

            try
            {
                myConnection.Open();
                var myAdapter = new MySqlDataAdapter(sql, myConnection);
                myAdapter.Fill(ds);
            }
            finally
            {
                myConnection.Close();
            }
            return ds;
        }

        public void ExecuteNonQuery(string serverName, string databaseName, string sql)
        {
            var myConnection = new MySqlConnection();
            myConnection.ConnectionString = String.Format(
                "{0};database={1}",
                ConnectionString,
                databaseName);

            try
            {
                myConnection.Open();
                var myCommand = new MySqlCommand(sql);
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myCommand.ExecuteNonQuery();
            }
            finally
            {
                myConnection.Close();
            }
        }

        #endregion
    }
}