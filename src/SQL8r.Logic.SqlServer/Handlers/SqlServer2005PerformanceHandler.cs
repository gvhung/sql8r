﻿using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SqlServer.Handlers
{
	[Export(typeof(IPerformanceManager))]
	[ServerVersionMetaData(ServerVersionId.SqlServer2005, "1.0", true)]
	public class SqlServer2005PerformanceHandler : IPerformanceManager
	{
		private ServerConnectionSettings _settings;

		#region IPerformanceManager Members

		//public ServerVersionId ManagerName
		//{
		//    get { return ServerVersionId.SqlServer_2005; }
		//}

		public ServerConnectionSettings Settings
		{
			protected get
			{
				return _settings;
			}
			set { _settings = value; }
		}

		public Query GetRebuildIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.RebuildIndex.sql");

			string head = string.Format(sql, database.Name, index.Name, table.Schema, table.Name);
			if (server.Edition == ServerEditions.EnterpriseEdition)
			{
				head += " WITH ONLINE = ON";
			}

			var query = new Query(_settings, server.Name, database.Name, head);
			return query;
		}

		public Query GetReorganizeIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
		{
			string sql = ResourceReader.GetResourceSql("SQL8r.Logic.SqlServer.Queries.UI.ReorganizeIndex.sql");

			string head = string.Format(sql, database.Name, index.Name, table.Schema, table.Name, index.ObjectId);


			var query = new Query(_settings, server.Name, database.Name, head);
			return query;
		}

		#endregion
	}
}