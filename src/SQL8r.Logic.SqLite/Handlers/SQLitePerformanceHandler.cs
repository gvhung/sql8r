using System;
using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SQLite.Handlers
{
    [Export(typeof(IPerformanceManager))]
    [ServerVersionMetaData(ServerVersionId.SQLite3, "1.0", true)]
    public class SQLitePerformanceHandler : IPerformanceManager
    {
        private ServerConnectionSettings _settings;

        //public SQLitePerformanceHandler()
        //{
        //}
        //public SQLitePerformanceHandler(ServerConnectionSettings settings)
        //{
        //    _settings = settings;
        //}

        #region IPerformanceManager Members

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public Query GetRebuildIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
        {
            throw new NotImplementedException();
        }

        public Query GetReorganizeIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}