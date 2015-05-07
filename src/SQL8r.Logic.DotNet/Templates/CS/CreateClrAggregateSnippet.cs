using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.Native)]
public struct HelloWorldAgg
{
	public void Init()
	{
	}

	public void Accumulate(SqlString value)
	{
	}

	public void Merge(HelloWorldAgg value)
	{
	}

	public SqlString Terminate()
	{
		return string.Empty;
	}

}

/*
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
--
 
CREATE ASSEMBLY helloworld1 FROM 'c:\users\niklas\helloworld1.dll' WITH PERMISSION_SET = SAFE

 --
CREATE AGGREGATE helloAgg(input nvarchar(2000))
RETURNS nvarchar(2000)
EXTERNAL NAME helloworld1.HelloWorldAgg
  

*/