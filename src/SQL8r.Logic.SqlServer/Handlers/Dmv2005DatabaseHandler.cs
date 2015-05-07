using System;
using System.ComponentModel.Composition;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Reflection;
using System.Threading;
using log4net;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SqlServer.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.SqlServer2005, "1.0", true)]
    public class Dmv2005DatabaseHandler : IDatabaseManager
	{
		private static readonly ILog log = LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
		private ServerConnectionSettings _settings;

		private static readonly string sqlServerInfo = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetServerInfo.sql");
		private static readonly string sqlDatabases = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetServerDatabases.sql");
		private static readonly string sqlTables = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetDatabaseTables.sql");
		private static readonly string sqlViews = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetDatabaseViews.sql");
		private static readonly string sqlProcedures = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetDatabaseProcedures.sql");
		private static readonly string sqlFunctions = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetDatabaseFunctions.sql");
		private static readonly string sqlAssemblies = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetDatabaseAssemblies.sql");
		private static readonly string sqlColumns = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetServerColumns.sql");
		private static readonly string sqlIndexes = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetServerIndexes.sql");
		private static readonly string sqlTableSpaceUsed = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetTableSpaceUsed.sql");
		private static readonly string sqlIndexSpaceUsed = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.DMV.GetIndexSpaceUsed.sql");

		private static readonly string sqlParameters = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.GetParameters.sql");
		private static readonly string sqlAddColumn = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.AddColumn.sql");
		private static readonly string sqlAlterColumn = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.AlterColumn.sql");

		#region IDatabaseManager Members

		public Query GetTableContent(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, bool editable)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.OpenTable.sql");

			string dbSQL = string.Format(sql, database.Name, table.Schema, table.Name);

			var conn = new SqlConnection(ConnectionString);
			conn.Open();
			conn.ChangeDatabase(database.Name);
			var cmd = new SqlCommand(dbSQL, conn);

			var sdaDatabases = new SqlDataAdapter(cmd);

			if (editable)
			{
				var scb = new SqlCommandBuilder(sdaDatabases);
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
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.OpenView.sql");

			string dbSQL = string.Format(sql, database.Name, view.Schema, view.Name);

			var sdaDatabases = new SqlDataAdapter(dbSQL, ConnectionString);

			var dsDatabases = new DataTable("ViewContent");
			sdaDatabases.Fill(dsDatabases);

			var query = new Query(_settings, server.Name, database.Name, dbSQL, dsDatabases);
			return query;
		}

		public Query GetViewQuery(Sql8rServer server, Sql8rDatabase database, Sql8rView view)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.EditView.sql");

			string dbSQL = string.Format(sql, database.Name, view.ObjectId);

			var dtTables = new DataTable("ViewQuery");
			var sdaTables = new SqlDataAdapter(dbSQL, ConnectionString);
			sdaTables.Fill(dtTables);

			DataRow drDatabase = dtTables.Rows[0];

			string def = drDatabase["definition"].ToString();
			var query = new Query(_settings, server.Name, database.Name, def);
			return query;
		}

		public Query GetTableQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
		{
			var smo = new SmoDatabaseHandler(_settings);
			return smo.GetTableQuery(server, database, table);
		}

		public Query GetFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.EditFunction.sql");

			string dbSQL = string.Format(sql, database.Name, function.ObjectId);

			var dtTables = new DataTable("definition");
			var sdaTables = new SqlDataAdapter(dbSQL, ConnectionString);
			sdaTables.Fill(dtTables);

			DataRow drDatabase = dtTables.Rows[0];

			string def = drDatabase["definition"].ToString();
			var query = new Query(_settings, server.Name, database.Name, def);
			return query;
		}

		public Query GetProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.EditProcedure.sql");

			string dbSQL = string.Format(sql, database.Name, procedure.ObjectId);

			var dtTables = new DataTable("Tables") { Locale = CultureInfo.InvariantCulture };
			var sdaTables = new SqlDataAdapter(dbSQL, ConnectionString);
			sdaTables.Fill(dtTables);

			DataRow drDatabase = dtTables.Rows[0];

			string def = drDatabase["definition"].ToString();
			var query = new Query(_settings, server.Name, database.Name, def);
			return query;
		}

		public Query GetExecuteFunctionQuery(Sql8rServer server, Sql8rDatabase database, Sql8rFunction function)
		{
			string head = string.Format("EXEC {0}.{1}", function.Schema, function.Name);
			string use = string.Format("USE {0} ", database.Name);
			string vars = "";

			string dbSQL = string.Format(sqlParameters, database.Name, function.ObjectId);
			var sdaParameters = new SqlDataAdapter(dbSQL, ConnectionString);

			var dtParameters = new DataTable("Parameters") { Locale = CultureInfo.InvariantCulture };
			sdaParameters.Fill(dtParameters);

			string sep = ",";
			int count = dtParameters.Rows.Count;
			for (int i = 0; i < count; i++)
			{
				DataRow drDatabase = dtParameters.Rows[i];

				int paramId = int.Parse(drDatabase["parameterId"].ToString());
				string paramName = drDatabase["pName"].ToString();
				bool isOutput = bool.Parse(drDatabase["isOutput"].ToString());
				string typeName = drDatabase["tName"].ToString();

				if (i == count - 1)
				{
					sep = "";
				}
				if (!isOutput)
				{
					head = string.Format("{0} {1}=<{2}>{3}", head, paramName, typeName, sep);
				}
				else if (paramId > 0)
				{
					vars = string.Format("DECLARE {0} {1};{2}", paramName, typeName, Environment.NewLine);
					head = string.Format("{0} {1} OUTPUT{2}", head, paramName, sep);
				}
				else
				{
					vars = string.Format("DECLARE @result {0};{1}", typeName, Environment.NewLine);
				}
			}

			string sql = string.Format("{0}{1}{2}{3}{4}", use, Environment.NewLine, vars, Environment.NewLine, head);
			var query = new Query(_settings, server.Name, database.Name, sql);
			return query;
		}

		public Query GetExecuteProcedureQuery(Sql8rServer server, Sql8rDatabase database, Sql8rProcedure procedure)
		{
			string head = string.Format("EXEC {0}.{1}", procedure.Schema, procedure.Name);
			string use = string.Format("USE {0} ", database.Name);
			string vars = "";

			string dbSQL = string.Format(sqlParameters, database.Name, procedure.ObjectId);
			var sdaParameters = new SqlDataAdapter(dbSQL, ConnectionString);

			var dtParameters = new DataTable("Parameters");
			sdaParameters.Fill(dtParameters);

			string sep = ",";
			int count = dtParameters.Rows.Count;
			for (int i = 0; i < count; i++)
			{
				DataRow drDatabase = dtParameters.Rows[i];

				int paramId = int.Parse(drDatabase["parameterId"].ToString());
				string paramName = drDatabase["pName"].ToString();
				bool isOutput = bool.Parse(drDatabase["isOutput"].ToString());
				string typeName = drDatabase["tName"].ToString();

				if (i == count - 1)
				{
					sep = "";
				}
				if (!isOutput)
				{
					head = string.Format("{0} {1}=<{2}>{3}", head, paramName, typeName, sep);
				}
				else if (paramId > 0)
				{
					vars = string.Format("DECLARE {0} {1};{2}", paramName, typeName, Environment.NewLine);
					head = string.Format("{0} {1} OUTPUT{2}", head, paramName, sep);
				}
				else
				{
					vars = string.Format("DECLARE @outparam {0};{1}", typeName, Environment.NewLine);
				}
			}

			string sql = string.Format("{0}{1}{2}{3}{4}", use, Environment.NewLine, vars, Environment.NewLine, head);
			var query = new Query(_settings, server.Name, database.Name, sql);
			return query;
		}

		public Query GetAddColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
		{
			string sql = string.Format(sqlAddColumn, database.Name, table.GetFullObjectName());
			var query = new Query(_settings, server.Name, database.Name, sql);
			return query;
		}

		public Query GetAlterColumnQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rColumn column)
		{
			string sql = string.Format(sqlAlterColumn, database.Name, table.GetFullObjectName(), column.Name);
			var query = new Query(_settings, server.Name, database.Name, sql);
			return query;
		}

		//public Query GetAddIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
		//{
		//    string sql = string.Format(sqlAddIndex, database.Name, table.GetFullObjectName());
		//    var query = new Query(_settings, server.Name, database.Name, sql);
		//    return query;

		//}

		public Sql8rServer GetServer()
		{
			const bool parallellize1 = true;
			log.Debug("Enter GetServer");

			var s = new Sql8rServer(_settings);

			setServerInfo(ref s, ConnectionString);
			var sdaDatabases = new SqlDataAdapter(sqlDatabases, ConnectionString);

			var dtDatabases = new DataTable("Databases");
			sdaDatabases.Fill(dtDatabases);

			log.Debug("Got Databases");

			if (parallellize1)
			{
				var arDatabases = new DataRow[dtDatabases.Rows.Count];
				dtDatabases.Rows.CopyTo(arDatabases, 0);

				Parallel.ForEach(arDatabases, drDatabase =>
				   {
					   Sql8rDatabase db = createDb(ConnectionString, drDatabase);
					   s.Databases.Add(db);
				   });
			}
			else
			{
				foreach (DataRow drDatabase in dtDatabases.Rows)
				{
					Sql8rDatabase db = createDb(ConnectionString, drDatabase);
					s.Databases.Add(db);
				}
			}

			log.Debug("Exit GetServer");

			return s;
		}

		private Sql8rDatabase createDb(string dbConn, DataRow drDatabase)
		{
			string dbName = drDatabase["name"].ToString();
			int databaseId = int.Parse(drDatabase["databaseId"].ToString());
			var db = new Sql8rDatabase(dbName, databaseId);

			log.Debug(string.Format("Adding database: {0}", dbName));


			// -- Columns

			string cSQL = string.Format(sqlColumns, dbName);
			var dtColumns = new DataTable("Columns");
			var sdaColumns = new SqlDataAdapter(cSQL, dbConn);
			sdaColumns.Fill(dtColumns);

			// -- Indexes

			string iSQL = string.Format(sqlIndexes, dbName);
			var dtIndexes = new DataTable("Indexes");
			var sdaIndexes = new SqlDataAdapter(iSQL, dbConn);
			sdaIndexes.Fill(dtIndexes);

			// -- Tables

			string tSQL = string.Format(sqlTables, dbName);
			var dtTables = new DataTable("Tables");
			var sdaTables = new SqlDataAdapter(tSQL, dbConn);
			sdaTables.Fill(dtTables);

			foreach (DataRow drTable in dtTables.Rows)
			{
				Sql8rTable t = addTable(drTable, db.ObjectId, dbName, dbConn, dtColumns, dtIndexes);
				db.Tables.Add(t);
			}

			log.Debug(string.Format("Added {0} tables", dtTables.Rows.Count));

			// -- Views

			string vSQL = string.Format(sqlViews, dbName);
			var dtViews = new DataTable("Views");
			var sdaViews = new SqlDataAdapter(vSQL, dbConn);
			sdaViews.Fill(dtViews);

			foreach (DataRow drView in dtViews.Rows)
			{
				Sql8rView v = addView(drView, db.ObjectId, dbName, dbConn, dtColumns, dtIndexes);
				db.Views.Add(v);
			}

			log.Debug(string.Format("Added {0} views", dtViews.Rows.Count));

			// -- Procedures

			string pSQL = string.Format(sqlProcedures, dbName);
			var dtProcedures = new DataTable("Procedures");
			var sdaProcedures = new SqlDataAdapter(pSQL, dbConn);
			sdaProcedures.Fill(dtProcedures);

			foreach (DataRow drProcedure in dtProcedures.Rows)
			{
				Sql8rProcedure p = addProcedure(drProcedure);
				db.Procedures.Add(p.Name, p);
			}

			// -- Functions

			string fknSQL = string.Format(sqlFunctions, dbName);
			var dtFunctions = new DataTable("Functions");
			var sdaFunctions = new SqlDataAdapter(fknSQL, dbConn);
			sdaFunctions.Fill(dtFunctions);

			foreach (DataRow drFunction in dtFunctions.Rows)
			{
				Sql8rFunction f = addFunction(drFunction);
				db.Functions.Add(f.Name, f);
			}

			// -- Assemblies

			//string asmSQL = string.Format(sqlAssemblies, dbName);
			//var dtAssemblies = new DataTable("Assemblies");
			//var sdaAssemblies = new SqlDataAdapter(asmSQL, dbConn);
			//sdaAssemblies.Fill(dtAssemblies);

			//foreach (DataRow drAssembly in dtAssemblies.Rows)
			//{
			//    Sql8rAssembly a = addAssembly(drAssembly);
			//    db.Assemblies.Add(a.Name, a);
			//}



			//s.Databases.Add(db);

			log.Debug(string.Format("Created database: {0}", dbName));
			return db;
		}

		public void GetServerOtherStuff(Sql8rDatabase db)
		{

			string aSQL = string.Format(sqlAssemblies, db.Name);
			var dsAssemblies = new DataSet("Assemblies");
			var sdaAssemblies = new SqlDataAdapter(aSQL, ConnectionString);
			sdaAssemblies.Fill(dsAssemblies);

			db.Assemblies.Clear();
			foreach (DataRow drAssembly in dsAssemblies.Tables[0].Rows)
			{
				Sql8rAssembly a = addAssembly(drAssembly);

				DataRow[] types = dsAssemblies.Tables[1].Select(string.Format("assemblyId={0}", a.ObjectId));
				foreach (DataRow drType in types)
				{
					Sql8rAssemblyType type = addAssembyType(drType);
					a.Types.Add(type.Name, type);
				}

				db.Assemblies.Add(a.Name, a);
			}
		}

		public Exception TestConnection()
		{
			var cn = new SqlConnection(ConnectionString);
			try
			{
				cn.Open();
				return null;
			}
			catch (SqlException e)
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
            throw new NotImplementedException();
        }

        public void DropDatabase(string fileName)
        {
            throw new NotImplementedException();
        }

        //public ServerVersionId ManagerName
        //{
        //    get { return ServerVersionId.SqlServer_2005; }
        //}

        //public bool ManagerPublished
        //{
        //    get { return true; }
        //}

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public string ConnectionString
        {
            get
            {
                if (_settings.UseWindowsAuthentication)
                {
                    return string.Format("SERVER={0};DATABASE={1};Trusted_Connection=True;", _settings.ServerName, _settings.DatabaseName);
                }
                return string.Format("SERVER={0};DATABASE={1};UID={2};PWD={3}", _settings.ServerName, _settings.DatabaseName, _settings.UserName, _settings.Password);
            }
        }

        public DataSet ExecuteQuery(string serverName, string databaseName, string sql)
		{

			var cn = new SqlConnection(ConnectionString);
			cn.Open();

			if (!string.IsNullOrEmpty(databaseName))
			{
				string dbSQL1 = string.Format("USE {0};", databaseName);
				SqlCommand cmd1 = cn.CreateCommand();
				cmd1.CommandText = dbSQL1;
				cmd1.ExecuteNonQuery();
			}

			string dbSQL2 = sql;
			SqlCommand cmd2 = cn.CreateCommand();
			cmd2.CommandText = dbSQL2;
			var sdaDatabases = new SqlDataAdapter(cmd2);

			var dsDatabases = new DataSet("QueryResult");
			sdaDatabases.Fill(dsDatabases);

			return dsDatabases;
		}

		public void ExecuteNonQuery(string serverName, string databaseName, string sql)
		{
			string dbSQL = string.Format("USE {0}; {1}", databaseName, sql);

			var sconDatabases = new SqlConnection(ConnectionString);
			var cmdDatabases = new SqlCommand(dbSQL, sconDatabases);
			cmdDatabases.ExecuteNonQuery();
			sconDatabases.Close();

			// använd using
		}

		#endregion

		private void setServerInfo(ref Sql8rServer s, string dbConn)
		{
			var dtServerInfo = new DataTable("ServerInfo");
			var sdaServerInfo = new SqlDataAdapter(sqlServerInfo, dbConn);
			sdaServerInfo.Fill(dtServerInfo);
			if (dtServerInfo.Rows.Count > 0)
			{
				DataRow drServerInfo = dtServerInfo.Rows[0];
				string productVersion = drServerInfo[0].ToString();
				string productLevel = drServerInfo[1].ToString();
				string edition = drServerInfo[2].ToString();
				int engineEdition = int.Parse(drServerInfo[3].ToString());

				s.SetServerInfo(productVersion, productLevel, edition, engineEdition);
			}
		}

		private void setTableSpaceUsage(ref Sql8rTable t, string dbConn, string dbName, string objectName)
		{
			string spaceSQL =
				string.Format(sqlTableSpaceUsed, dbName, objectName);
			var dtSpace = new DataTable("Space");
			var sdaSpace = new SqlDataAdapter(spaceSQL, dbConn);
			sdaSpace.Fill(dtSpace);
			if (dtSpace.Rows.Count > 0)
			{
				DataRow drSpace = dtSpace.Rows[0];
				double dsu = double.Parse(drSpace[3].ToString().Replace(" KB", ""), CultureInfo.InvariantCulture);
				double isu = double.Parse(drSpace[4].ToString().Replace(" KB", ""), CultureInfo.InvariantCulture);
				t.SetSpaceStats(dsu, isu);
			}
		}

		private void setIndexSpaceUsage(ref Sql8rIndex i, string dbConn, string dbName, long dbId, long objectId, int indexId)
		{
			string spaceSQL =
				string.Format(sqlIndexSpaceUsed,
							  dbName, dbId, objectId, indexId);
			var dtSpace = new DataTable("Space");
			var sdaSpace = new SqlDataAdapter(spaceSQL, dbConn);
			sdaSpace.Fill(dtSpace);
			if (dtSpace.Rows.Count > 0)
			{
				//index_id, avg_fragmentation_in_percent, fragment_count, avg_fragment_size_in_pages, page_count
				DataRow drSpace = dtSpace.Rows[0];
				double fragmentation = double.Parse(drSpace[1].ToString(), CultureInfo.CurrentCulture);
				int spaceUsed = 8 * int.Parse(drSpace[4].ToString(), CultureInfo.InvariantCulture);
				i.SetSpaceStats(fragmentation, spaceUsed);
			}
		}

		private Sql8rTable addTable(DataRow drTable, long dbId, string dbName, string dbConn, DataTable dtColumns, DataTable dtIndexes)
		{
			string tName = drTable["tName"].ToString();
			string sName = drTable["sName"].ToString();
			bool isSystemObject = bool.Parse(drTable["isSystemObject"].ToString());
			long objectId = long.Parse(drTable["objectId"].ToString(), CultureInfo.InvariantCulture);

			var t = new Sql8rTable(tName, sName, isSystemObject, objectId);

			if (!dbName.Equals("tempdb", StringComparison.OrdinalIgnoreCase))
			{
				string objectName = string.Format(CultureInfo.InvariantCulture,
								  "{0}.{1}", sName, tName);
				setTableSpaceUsage(ref t, dbConn, dbName, objectName);
			}

			DataRow[] columnRows = dtColumns.Select(string.Format("objectId = {0}", objectId));

			foreach (DataRow drColumn in columnRows)
			{
				Sql8rColumn c = addColumn(drColumn);
				if (!t.Columns.ContainsKey(c.ObjectId))
				{
					t.Columns.Add(c.ObjectId, c);
				}
			}


			DataRow[] indexRows = dtIndexes.Select(string.Format("objectId = {0}", objectId));

			//string iSQL = string.Format(sqlIndexes, dbName, objectId);
			//var dtIndexes = new DataTable("Indexes");
			//var sdaIndexes = new SqlDataAdapter(iSQL, dbConn);
			//sdaIndexes.Fill(dtIndexes);


			foreach (DataRow drIndex in indexRows)
			{
				string iName = drIndex["iName"].ToString();
				int indexId = int.Parse(drIndex["indexId"].ToString(), CultureInfo.InvariantCulture);
				int iType = int.Parse(drIndex["iType"].ToString(), CultureInfo.InvariantCulture);
				bool isPrimaryKey = bool.Parse(drIndex["isPrimaryKey"].ToString());

				// 0=HEAP, 1=CLUSTERED, 2=UNCLUSTERED, 3=XML
				var i = new Sql8rIndex(iName, iType == 1, isPrimaryKey, indexId);

				setIndexSpaceUsage(ref i, dbConn, dbName, dbId, t.ObjectId, indexId);

				t.Indexes.Add(i.Name, i);
			}


			return t;
		}

		private Sql8rView addView(DataRow drView, long dbId, string dbName, string dbConn, DataTable dtColumns, DataTable dtIndexes)
		{
			string vName = drView["vName"].ToString();
			string sName = drView["sName"].ToString();
			bool isSystemObject = bool.Parse(drView["isSystemObject"].ToString());
			long objectId = long.Parse(drView["objectId"].ToString(), CultureInfo.InvariantCulture);

			var v = new Sql8rView(vName, sName, isSystemObject, objectId);

			DataRow[] rows = dtColumns.Select(string.Format("objectId = {0}", objectId));

			foreach (DataRow drColumn in rows)
			{
				Sql8rColumn c = addColumn(drColumn);
				if (!v.Columns.ContainsKey(c.ObjectId))
				{
					v.Columns.Add(c.ObjectId, c);
				}
			}

			return v;
		}

		private Sql8rColumn addColumn(DataRow drColumn)
		{
			string cName = drColumn["cName"].ToString();
			string typeName = drColumn["typeName"].ToString();
			int maxLength = int.Parse(drColumn["maxLength"].ToString(), CultureInfo.InvariantCulture);
			bool inPrimaryKey = false;
			if (!drColumn.IsNull("isPrimaryKey"))
			{
				inPrimaryKey = bool.Parse(drColumn["isPrimaryKey"].ToString());
			}
			int columnId = int.Parse(drColumn["columnId"].ToString(), CultureInfo.InvariantCulture);
			var c = new Sql8rColumn(cName, inPrimaryKey, typeName, maxLength, columnId);
			return c;
		}

		private Sql8rProcedure addProcedure(DataRow drProcedure)
		{
			string pName = drProcedure["pName"].ToString();
			string sName = drProcedure["sName"].ToString();
			bool isSystemObject = bool.Parse(drProcedure["isSystemObject"].ToString());
			long objectId = long.Parse(drProcedure["objectId"].ToString(), CultureInfo.InvariantCulture);

			var p = new Sql8rProcedure(pName, sName, isSystemObject, objectId);
			return p;
		}

		private Sql8rFunction addFunction(DataRow drFunction)
		{
			string fName = drFunction["fName"].ToString();
			string sName = drFunction["sName"].ToString();
			bool isSystemObject = bool.Parse(drFunction["isSystemObject"].ToString());
			long objectId = long.Parse(drFunction["objectId"].ToString(), CultureInfo.InvariantCulture);

			var f = new Sql8rFunction(fName, sName, isSystemObject, objectId);
			return f;
		}

		private Sql8rAssembly addAssembly(DataRow drAssembly)
		{
			string afName = drAssembly["afName"].ToString();
			long objectId = long.Parse(drAssembly["objectId"].ToString());
			//   bool isSystemObject = bool.Parse(drAssembly["isSystemObject"].ToString());
			//   long objectId = long.Parse(drAssembly["fileId"].ToString(), CultureInfo.InvariantCulture);

			var a = new Sql8rAssembly(afName, objectId);
			return a;
		}

		private Sql8rAssemblyType addAssembyType(DataRow drType)
		{
			string atName = drType["name"].ToString();
			string sName = drType["sName"].ToString();
			string assemblyClass = drType["assemblyClass"].ToString();
			long objectId = long.Parse(drType["objectId"].ToString());

			var at = new Sql8rAssemblyType(atName, sName, assemblyClass, objectId);
			return at;
		}


	}
}