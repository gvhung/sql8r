using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel.Templates;
using SQL8r.Logic.Factories;

namespace SQL8r.Logic.Interfaces
{
    /// <summary>
    /// 
    /// </summary>
    public interface ITemplateManager
    {
//        ServerVersionId ManagerName { get; }
        ServerConnectionSettings Settings { set; }

        Template GetTemplate(string templateName);
        string GetQuery(string queryName);
    }
}