using System.IO;
using System.Reflection;
using SQL8r.Logic.Exceptions;

namespace SQL8r.Logic.Common
{
    public static class ResourceReader
    {
        public static string GetResourceSql(string name)
        {
            Assembly a = Assembly.GetCallingAssembly();
            Stream s = a.GetManifestResourceStream(name);
        	if (s != null)
        	{
        		TextReader tr = new StreamReader(s);
        		string sql = tr.ReadToEnd();
        		return sql;
        	}
        	throw new SQL8rException(string.Format("Could not find SQL resource {0}", name));
        }

        public static string GetResourceTemplateSql(string name)
        {
            Assembly a = Assembly.GetCallingAssembly();
            Stream s = a.GetManifestResourceStream(name);
        	if (s != null)
        	{
        		TextReader tr = new StreamReader(s);
        		string sql = tr.ReadToEnd();
        		return sql;
        	}
        	throw new SQL8rException(string.Format("Could not find Template resource {0}", name));
        }

        public static string GetResourceSyntax(string name)
        {
            Assembly a = Assembly.GetCallingAssembly();
            Stream s = a.GetManifestResourceStream(name);
        	if (s != null)
        	{
        		TextReader tr = new StreamReader(s);
        		string sql = tr.ReadToEnd();
        		return sql;
        	}
        	throw new SQL8rException(string.Format("Could not find Syntax resource {0}", name));
        }
    }
}