using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Factories
{
    public class PerformanceManagerFactory
    {
        private static PerformanceManagerFactory _instance;

        [ImportMany(typeof(IPerformanceManager))]
        public IEnumerable<Lazy<IPerformanceManager, IServerVersionMetaData>> PerfManagers { get; set; }
        //public ExportCollection<IPerformanceManager, IServerVersionMetaData> PerfManagers2 { get; set; }

        private PerformanceManagerFactory()
        {
        }

        public static PerformanceManagerFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new PerformanceManagerFactory();
                }
                return _instance;
            }
        }

        public IPerformanceManager GetPerformanceManager(ServerConnectionSettings settings)
        {
            if (settings == null)
            {
                throw new ArgumentNullException("settings");
            }

            ServerVersionId version = settings.ServerVersion;
            IPerformanceManager perfMan;

            foreach (var expmanager in PerfManagers)
            {
//                string dbVersion = ServerVersionMetaData.GetMetadataString(expmanager, "DatabaseVersion");
                string dbVersion = expmanager.Metadata.DatabaseVersion;
                //IPerformanceManager manager = expmanager.GetExportedObject();
                if (dbVersion == version.VersionId)
                {
                    perfMan = expmanager.Value;
                    perfMan.Settings = settings;
                    return perfMan;

                }
            }

            throw new SQL8rException(string.Format("PerfManager not loaded: {0}", version));
        }
    }
}