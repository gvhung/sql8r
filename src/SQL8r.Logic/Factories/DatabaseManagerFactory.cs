using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.Composition;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Interfaces;

namespace SQL8r.Logic.Factories
{
    public class DatabaseManagerFactory
    {
        private static DatabaseManagerFactory _instance;

        [ImportMany(typeof(IDatabaseManager))]
        public IEnumerable<Lazy<IDatabaseManager, IServerVersionMetaData>> DbManagers { get; set; }

        private DatabaseManagerFactory()
        {
        }

        public static DatabaseManagerFactory Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new DatabaseManagerFactory();
                }
                return _instance;
            }
        }

        public IDatabaseManager GetDatabaseManager(ServerConnectionSettings settings)
        {
            if (settings == null)
            {
                throw new ArgumentNullException("settings");
            }

            ServerVersionId version = settings.ServerVersion;
            IDatabaseManager dbMan;

            //Export<IDatabaseManager>
            foreach (var expmanager in DbManagers)
            {
                string dbVersion = expmanager.Metadata.DatabaseVersion;
          //      string dbVersion = ServerVersionMetaData.GetMetadataString(expmanager, "DatabaseVersion");
                // IDatabaseManager manager = expman.GetExportedObject();
                if (dbVersion == version.VersionId)
                {
                    dbMan = expmanager.Value;
                    dbMan.Settings = settings;
                    return dbMan;
 
                }
            }
            throw new SQL8rException(string.Format("DbManager not loaded: {0}", version));
        }

		public IList<ServerVersionId> GetSupportedVendors()
		{
			if (DbManagers == null)
			{
				throw new SQL8rException("No DatabaseManagers loaded");
			}

			IList<ServerVersionId> vendors = new List<ServerVersionId>();
			foreach (var dbmanager in DbManagers)
			{
//			    IDatabaseManager o = expmanager.GetExportedObject();
			    bool isPublished = dbmanager.Metadata.IsPublished;
                string dbVersion = dbmanager.Metadata.DatabaseVersion;
                if (isPublished)
				{
                    vendors.Add(ServerVersionId.Parse(dbVersion));
				}
			}

			return new ReadOnlyCollection<ServerVersionId>(vendors);
		}
    }
}