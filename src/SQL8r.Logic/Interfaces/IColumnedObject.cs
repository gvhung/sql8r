using System.Collections.Generic;
using SQL8r.Logic.DomainModel;

namespace SQL8r.Logic.Interfaces
{
    public interface IColumnedObject
    {
        IDictionary<long, Sql8rColumn> Columns { get; }
        string Name { get; }
        string Schema { get; }
    }
}