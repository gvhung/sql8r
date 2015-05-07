using System.ComponentModel.Composition;
using System.Reflection;
using log4net;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SqlServer.Handlers
{
    [Export(typeof(IDatabaseManager))]
    [ServerVersionMetaData(ServerVersionId.SqlServer2008, "1.0", true)]
    public class Dmv2008DatabaseHandler : Dmv2005DatabaseHandler, IDatabaseManager
	{
        //public new ServerVersionId ManagerName
        //{
        //    get { return ServerVersionId.SqlServer_2008; }
        //}

        //public new bool ManagerPublished
        //{
        //    get { return true; }
        //}
	}
}