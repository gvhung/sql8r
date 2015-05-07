using System;
using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Oracle.Handlers
{
    [Export(typeof(IPerformanceManager))]
    [ServerVersionMetaData(ServerVersionId.Oracle10, "1.0", true)]
    public class OraclePerformanceHandler : IPerformanceManager
    {
        private ServerConnectionSettings _settings;

        //public OraclePerformanceHandler()
        //{
        //}
        //public OraclePerformanceHandler(ServerConnectionSettings settings)
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