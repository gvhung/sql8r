using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public partial class HelloWorldProc
{
	[Microsoft.SqlServer.Server.SqlProcedure]
	public static void HelloWorldSp()
	{
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

CREATE ASSEMBLY helloworld5 FROM 'c:\users\niklas\helloworld5.dll' WITH PERMISSION_SET = SAFE

 --
CREATE PROCEDURE helloSp
AS EXTERNAL NAME helloworld5.HelloWorldProc.HelloWorldSp
  

*/