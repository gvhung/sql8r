using System;
using System.CodeDom.Compiler;
using System.ComponentModel.Composition;
using System.Data;
using System.IO;
using System.Reflection;
using SQL8r.Logic.Common;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.DotNet.Handlers
{
    [Export(typeof(ICodeManager))]
	[ServerVersionMetaData(ServerVersionId.DotNetCode, "1.0", false)]
    public class DotNetHandler : ICodeManager
    {
		private Assembly compile(string language, string code, bool inMemory, string outFileName)
		{
			if (CodeDomProvider.IsDefinedLanguage(language))
			{
				using (CodeDomProvider provider = CodeDomProvider.CreateProvider(language))
				{

					CompilerInfo langCompilerInfo = CodeDomProvider.GetCompilerInfo(language);
					CompilerParameters langCompilerConfig = langCompilerInfo.CreateDefaultCompilerParameters();

					Assembly self = Assembly.GetExecutingAssembly();
					string dir = Path.GetDirectoryName(self.Location);


					langCompilerConfig.GenerateInMemory = inMemory;
					if (!inMemory)
					{
						langCompilerConfig.OutputAssembly = outFileName;
					}
					langCompilerConfig.GenerateExecutable = false;
					langCompilerConfig.ReferencedAssemblies.Clear();
					langCompilerConfig.ReferencedAssemblies.Add("System.dll");
					langCompilerConfig.ReferencedAssemblies.Add("System.Data.dll");
					langCompilerConfig.ReferencedAssemblies.Add("System.Xml.dll");
					langCompilerConfig.ReferencedAssemblies.Add(Path.Combine(dir, "SQL8r.Logic.dll"));
					CompilerResults res = provider.CompileAssemblyFromSource(langCompilerConfig, code);
					if (res.Errors.HasErrors)
					{
						throw new SQL8rException(res.Errors[0].ErrorText);
					}
					else
					{
						Assembly a = res.CompiledAssembly;
						return a;
					}
				}
			}
			throw new SQL8rException("language not known");
		}

    	#region ICodeManager Members

		public DataSet CompileAndRun(string language, string code)
		{
			Assembly a = compile(language, code, true, null);
			Type[] types = a.GetExportedTypes();
			foreach (Type type in types)
			{
				object o = a.CreateInstance(type.FullName);
				if (o != null)
				{
					ISnippet snip = o as ISnippet;

					if (snip != null)
					{
						DataSet ds = snip.GetMyData();
						return ds;
					}
				}
			}
			throw new SQL8rException("Could not find type implementing ISnippet");
		}

    	public void CompileToFile(string language, string code, string outFileName)
    	{
			compile(language, code, false, outFileName);
    	//	return true;    		
    	}

    	#endregion

    }
}