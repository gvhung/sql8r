using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SqlServer.TemplateHandlers
{
	[Export(typeof(ITemplateManager))]
    [ServerVersionMetaData(ServerVersionId.SqlServer2008)]
    public class SqlServer2008TemplateHandler : SqlServer2005TemplateHandler, ITemplateManager
    {
        //public new ServerVersionId ManagerName
        //{
        //    get { return ServerVersionId.SqlServer_2008; }
        //}
    }
}