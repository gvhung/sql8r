using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel.Templates;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.DotNet.TemplateHandlers
{
	[Export(typeof(ITemplateManager))]
	[ServerVersionMetaData(ServerVersionId.DotNetCode, "1.0", true)]
    public class DotNetTemplateHandler : ITemplateManager
    {
        #region ITemplateManager Members

        ServerConnectionSettings _settings;

        public ServerConnectionSettings Settings
        {
            set { _settings = value;         }
        }

        public Template GetTemplate(string templateName)
        {
            string templateID = string.Format("SQL8r.Logic.DotNet.Templates.{0}", templateName);
            string dotNetTemplate = ResourceReader.GetResourceTemplateSql(templateID);

            return new Template(templateID, dotNetTemplate);
        }

        public string GetQuery(string queryName)
        {
            string templateID = string.Format("SQL8r.Logic.DotNet.Queries.{0}", queryName);
            string dotNetTemplate = ResourceReader.GetResourceTemplateSql(templateID);

            return dotNetTemplate;
        }

        #endregion
    }
}