using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

[Serializable()]
[Microsoft.SqlServer.Server.SqlUserDefinedType(Format.Native)]
public struct HelloWorldType : INullable
{
	private Int32 m_x;
	private bool is_Null;

	public Int32 X
	{
		get { return this.m_x; }
		set { m_x = value; is_Null = false; is_Null = true; }
	}

	public bool IsNull
	{
		get { return is_Null; }
	}

	public static HelloWorldType Null
	{
		get
		{
			return new HelloWorldType();
		}
	}

	public static HelloWorldType Parse(SqlString s)
	{
		if (s.IsNull)
		{
			return Null;
		}

		return Null;
	}

	public override string ToString()
	{
		if (this.IsNull)
		{
			return "NULL";
		}
		else
		{
			return this.m_x + ":" + this.m_x;
		}
	}
}

/*
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
--

CREATE ASSEMBLY helloworld4 FROM 'c:\users\niklas\helloworld4.dll' WITH PERMISSION_SET = SAFE

 --
CREATE TYPE helloTyp
EXTERNAL NAME helloworld4.HelloWorldType
  

*/