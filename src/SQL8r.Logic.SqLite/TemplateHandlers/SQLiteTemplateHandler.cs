using System.ComponentModel.Composition;
using System.Globalization;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel.Templates;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.SQLite.TemplateHandlers
{
    [Export(typeof(ITemplateManager))]
    [ServerVersionMetaData(ServerVersionId.SQLite3)]
    public class SQLiteTemplateHandler : ITemplateManager
    {
        #region ITemplateManager Members

        ServerConnectionSettings _settings;

        public ServerConnectionSettings Settings
        {
            set { _settings = value; }
        }

        public Template GetTemplate(string templateName)
        {
            string templateID = string.Format("SQL8r.Logic.SQLite.Templates.{0}.sql", templateName);
            string sqlTemplate = ResourceReader.GetResourceTemplateSql(templateID);

            return new Template(templateID, sqlTemplate);
        }

        public string GetQuery(string queryName)
        {
            string templateID = string.Format("SQL8r.Logic.SQLite.Queries.{0}.sql", queryName);
            string sqlQuery = ResourceReader.GetResourceTemplateSql(templateID);

            return sqlQuery;
        }

        #endregion
    }
}