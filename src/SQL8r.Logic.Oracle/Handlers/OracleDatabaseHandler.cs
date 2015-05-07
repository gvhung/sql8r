using System;
using System.ComponentModel.Composition;
using System.Data;
using System.Data.OracleClient;
using System.Globalization;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Oracle.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.Oracle10, "1.0", false)]
    public class OracleDatabaseHandler : IDatabaseManager
    {
        private ServerConnectionSettings _settings;

        public OracleDatabaseHandler()
        {
        }
        public OracleDatabaseHandler(ServerConnectionSettings settings)
        {
            _settings = settings;
        }

        #region IDatabaseManager Members

        public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
        {
            throw new NotImplementedException();
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
            throw new NotImplementedException();
        }

        public Query GetAlterColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rColumn column)
        {
            throw new NotImplementedException();
        }

        public Query GetAddIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            throw new NotImplementedException();
        }

        public Sql8rServer GetServer()
        {
            var myConnection = new OracleConnection();
            myConnection.ConnectionString = @"USER ID=hr;PASSWORD=hr;DATA SOURCE=//localhost/xe";
            //_settings.GetConnectionString();

            var s = new Sql8rServer(_settings);

            OracleDataReader myReader = null;

            var db = new Sql8rDatabase("OracleTest", 0);

            try
            {
                myConnection.Open();

                var myCommand = new OracleCommand();
                myCommand.CommandText = "SELECT table_name, owner FROM all_tables";
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    var t = new Sql8rTable(myReader.GetString(0), "",
                                           myReader.GetString(1) == "SYSTEM" || myReader.GetString(1) == "SYS", 0);
                    db.Tables.Add(t);

                    var myColumnConnection = new OracleConnection();
                    //myColumnConnection.ConnectionString = _settings.GetConnectionString();
                    myColumnConnection.ConnectionString = @"USER ID=hr;PASSWORD=hr;DATA SOURCE=//localhost/xe";

                    OracleDataReader myColumnReader = null;

                    try
                    {
                        myColumnConnection.Open();

                        var myColumnCommand = new OracleCommand();
                        myColumnCommand.CommandText = string.Format(CultureInfo.InvariantCulture,
                                                                    "SELECT column_name FROM user_tab_cols WHERE table_name = '{0}'",
                                                                    t.Name);

                        myColumnCommand.CommandType = CommandType.Text;
                        myColumnCommand.Connection = myColumnConnection;
                        myColumnReader = myColumnCommand.ExecuteReader();
                        while (myColumnReader.Read())
                        {
                            var c = new Sql8rColumn(myColumnReader.GetString(0), false, "", 0, 0);
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

                myCommand.CommandText = "SELECT view_name, owner FROM all_views";
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    var v = new Sql8rView(myReader.GetString(0), "",
                                          myReader.GetString(1) == "SYSTEM" || myReader.GetString(1) == "SYS", 0);
                    db.Views.Add(v);
                }
                myReader.Close();

                myCommand.CommandText = "SELECT UNIQUE(object_name) FROM all_procedures";
                myCommand.CommandType = CommandType.Text;
                myCommand.Connection = myConnection;
                myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    var sp = new Sql8rProcedure(myReader.GetString(0), "", false, 0);
                    db.Procedures.Add(sp.Name, sp);
                }
                myReader.Close();

                s.Databases.Add(db);
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
            var cn = new OracleConnection(ConnectionString);
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
                return string.Format("DATA SOURCE={0};DATABASE={1};USER ID={2};PASSWORD={3};", _settings.ServerName, _settings.DatabaseName, _settings.UserName, _settings.Password);
            }
        }

        public DataSet ExecuteQuery(string serverName, string databaseName, string sql)
        {
            throw new NotImplementedException();
        }

        public void ExecuteNonQuery(string serverName, string databaseName, string sql)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}