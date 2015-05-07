using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.ComponentModel.Composition.Primitives;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Factories
{
    public class TemplateManagerFactory
    {
        private static TemplateManagerFactory _instance;

        [ImportMany(typeof(ITemplateManager))]
        public IEnumerable<Lazy<ITemplateManager, IServerVersionMetaData>> TManagers { get; set; }

        private TemplateManagerFactory()
        {
        }

        public static TemplateManagerFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new TemplateManagerFactory();
                }
                return _instance;
            }
        }        

        public ITemplateManager GetCodeTemplateManager()
        {
            foreach (var expmanager in TManagers)
            {
//                string ver = ServerVersionMetaData.GetMetadataString(expmanager, "DatabaseVersion");
                string ver = expmanager.Metadata.DatabaseVersion;
                if (ver == ServerVersionId.DotNetCode)
                {
                    ITemplateManager manager = expmanager.Value;
                    return manager;
                }
            }
            throw new SQL8rException("Could not find the .NET TemplateManager");
        }

        public ITemplateManager GetSqlTemplateManager(ServerConnectionSettings settings)
        {
            if (settings == null)
            {
                throw new SQL8rException("No TemplateManager available, please connect to a server first");
            }

            ServerVersionId version = settings.ServerVersion;
            ITemplateManager dbMan;

            foreach (var tmanager in TManagers)
            {
                string dbVersion = tmanager.Metadata.DatabaseVersion;
//                ITemplateManager manager = expmanager.GetExportedObject();
                if (dbVersion == version.VersionId)
                {
                    dbMan = tmanager.Value;
                    dbMan.Settings = settings;
                    return dbMan;

                }
            }

            throw new SQL8rException(string.Format("TManager not loaded: {0}", version));
        }

    }
}