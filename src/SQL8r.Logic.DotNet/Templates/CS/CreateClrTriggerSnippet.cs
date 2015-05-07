using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public partial class HelloWorldTrigger
{
	[Microsoft.SqlServer.Server.SqlTrigger]
	public static void HelloWorld()
	{
		SqlTriggerContext triggContext = SqlContext.TriggerContext;
		SqlConnection conn = new SqlConnection("context connection=true");

		SqlPipe p;
		p = SqlContext.Pipe;
		p.Send(System.DateTime.Today.ToString());
	}
}

/*
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
--

CREATE ASSEMBLY helloworld2 FROM 'c:\users\niklas\helloworld2.dll' WITH PERMISSION_SET = SAFE

 --
CREATE TRIGGER helloTri
AS
EXTERNAL NAME helloworld2.HelloWorldTrigger.HelloWorld
  

*/