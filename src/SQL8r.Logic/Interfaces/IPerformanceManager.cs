using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.Factories;

namespace SQL8r.Logic.Interfaces
{
    /// <summary>
    /// 
    /// </summary>
    public interface IPerformanceManager
    {
//        ServerVersionId ManagerName { get; }
        ServerConnectionSettings Settings { set; }

        Query GetRebuildIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index);
        Query GetReorganizeIndexQuery(Sql8rServer server, Sql8rDatabase database, Sql8rTable table, Sql8rIndex index);
    }
}