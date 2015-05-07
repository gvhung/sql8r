using System;
using System.ComponentModel.Composition;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Factories
{
    public class CodeManagerFactory
    {
        private static CodeManagerFactory _instance;

        [Import(typeof(ICodeManager))]
        public Lazy<ICodeManager> CodeManager { get; set; }

        private CodeManagerFactory()
        {
        }

        public static CodeManagerFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new CodeManagerFactory();
                }
                return _instance;
            }
        }
        public ICodeManager GetCodeManager()
        {
            return CodeManager.Value;
        }
    }
}