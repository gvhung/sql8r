using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public partial class HelloWorldFkn
{
	[Microsoft.SqlServer.Server.SqlFunction]
	public static SqlString HelloWorld()
	{
		return "HELLO";
	}
}

/*
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
--
 
CREATE ASSEMBLY helloworld3 FROM 'c:\users\niklas\helloworld3.dll' WITH PERMISSION_SET = SAFE

 --
CREATE FUNCTION helloFkn()
RETURNS nvarchar(2000)
AS EXTERNAL NAME helloworld3.HelloWorldFkn.HelloWorld
  

*/