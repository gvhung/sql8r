using System;
using System.Collections.Specialized;
using Microsoft.SqlServer.Management.Smo;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;

namespace SQL8r.Logic.SqlServer.Handlers
{
    internal class SmoDatabaseHandler
    {
        private readonly ServerConnectionSettings _settings;

        public SmoDatabaseHandler(ServerConnectionSettings settings)
        {
            _settings = settings;
        }

        public Query GetTableQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table)
        {
            var s = new Server(server.Name);
            Database db = s.Databases[database.Name];
            Table v = db.Tables[table.Name, table.Schema];

            StringCollection tableSqls = v.Script();
            string viewSql =
                string.Format("{0}{1}{2}{3}{4}{5}", tableSqls[0], Environment.NewLine, tableSqls[1], Environment.NewLine,
                              Environment.NewLine, tableSqls[2]);
            var query = new Query(_settings, server.Name, database.Name, viewSql);
            return query;
        }
   }
}