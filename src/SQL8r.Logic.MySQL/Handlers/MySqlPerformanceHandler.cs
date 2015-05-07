using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.MySQL.Handlers
{
    [Export(typeof(IPerformanceManager))]
    [ServerVersionMetaData(ServerVersionId.MySql5, "1.0", true)]
    public class MySqlPerformanceHandler : IPerformanceManager
    {
        private ServerConnectionSettings _settings;

        //public MySqlPerformanceHandler()
        //{
        //}
        //public MySqlPerformanceHandler(ServerConnectionSettings si)
        //{
        //    _settings = si;
        //}

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public Query GetRebuildIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
        {
            throw new System.NotImplementedException();
        }

        public Query GetReorganizeIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index)
        {
            throw new System.NotImplementedException();
        }
    }
}