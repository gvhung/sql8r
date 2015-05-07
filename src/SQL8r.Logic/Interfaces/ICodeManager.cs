using System.Data;

namespace SQL8r.Logic.Interfaces
{
    /// <summary>
    /// 
    /// </summary>
    public interface ICodeManager
    {
		DataSet CompileAndRun(string language, string code);
		void CompileToFile(string language, string code, string fileName);
    }
}