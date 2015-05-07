using System;
using System.ComponentModel.Composition;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Factories
{
    public class SearchManagerFactory
    {
        private static SearchManagerFactory _instance;

        [Import(typeof(ISearchManager))]
        public Lazy<ISearchManager> SearchManager { get; set; }

        private SearchManagerFactory()
        {
        }

        public static SearchManagerFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new SearchManagerFactory();
                }
                return _instance;
            }
        }
        public ISearchManager GetDomainSearchManager()
        {
            return SearchManager.Value;
        }
    }
}