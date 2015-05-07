using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using Infragistics.Win.UltraWinToolbars;
using Microsoft.Win32;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel.Project;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Helpers;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Views;

namespace SQL8r.WinForms.Presenters.DockedChildren
{
    public class RibbonPresenter : IPresenter, IViewPresenter<MainForm>
    {
        private MainForm _view;
        private static RibbonPresenter _instance;

        private RibbonPresenter()
        {
        }

        public static RibbonPresenter Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new RibbonPresenter();
                }
                return _instance;
            }
        }





        //-----------------------------------------------------------------------------------------------------------

        private readonly IList<ServerConnectionSettings> _knownServers = new List<ServerConnectionSettings>();

        public void LoadKnownServers()
        {
            var sh = new SettingsIO();
            IList<ServerConnectionSettings> knownServers = sh.LoadKnownServers();

            removeKnownServers();
            for (int i = 0; i < knownServers.Count; i++)
            {
                ServerConnectionSettings settings = knownServers[i];
                AddKnownServer(settings, false);
            }
        }

        public void RemoveKnownServer(ToolBase tb)
        {
            if (tb.Tag is ServerConnectionSettings)
            {
                var settings = (ServerConnectionSettings)tb.Tag;
                _knownServers.Remove(settings);
            }
            _view.tbManager.Tools.Remove(tb);
        }

        private void removeKnownServers()
        {
            RibbonGroup rgKnownServer = _view.tbManager.Ribbon.Tabs[0].Groups[1];
            var btRemoveKnownServer = (PopupMenuTool)_view.tbManager.Ribbon.Tabs[0].Groups[2].Tools[0];

            for (int i = rgKnownServer.Tools.Count - 1; i >= 0; i--)
            {
                ToolBase tb = rgKnownServer.Tools[i];
                RemoveKnownServer(tb);
            }

            for (int i = btRemoveKnownServer.Tools.Count - 1; i >= 0; i--)
            {
                ToolBase tb = btRemoveKnownServer.Tools[i];
                RemoveKnownServer(tb);
            }
        }

        public void AddKnownServer(ServerConnectionSettings settings, bool connect)
        {
            if (addKnownServerInternal(settings, connect))
            {
                _knownServers.Add(settings);
            }
        }

        private bool addKnownServerInternal(ServerConnectionSettings settings, bool connect)
        {
            var btSvr = new ButtonTool(settings.ServerName);

            if (!_view.tbManager.Tools.Exists(btSvr.Key))
            {
                btSvr.SharedProps.Caption = settings.ServerName;
                btSvr.SharedProps.ToolTipTitle = string.Format("{0} - ({1})", settings.ServerName, settings.ServerVersion);
                btSvr.SharedProps.AppearancesSmall.Appearance.Image = 6;
                btSvr.ToolClick += RibbonEventHandlers.btSvr_ToolClick;

                btSvr.Tag = settings;
                _view.tbManager.Tools.Add(btSvr);

                RibbonGroup rgKnownServers = _view.tbManager.Ribbon.Tabs[0].Groups[1];
                var btRemoveKnownServer = (PopupMenuTool)_view.tbManager.Ribbon.Tabs[0].Groups[2].Tools[0];

                int pos = rgKnownServers.Tools.Add(btSvr);
                ToolBase t = rgKnownServers.Tools[pos];
                t.Tag = settings;

                var btRemoveSvr = new ButtonTool("Remove" + btSvr.Key);
                btRemoveSvr.SharedProps.Caption = btSvr.SharedProps.Caption;
                btRemoveSvr.Tag = btSvr;
                _view.tbManager.Tools.Add(btRemoveSvr);
                int id = btRemoveKnownServer.Tools.Add(btRemoveSvr);
                btRemoveKnownServer.Tools[id].Tag = btSvr;


                int nbrOfTools = rgKnownServers.Tools.Count;
                if (nbrOfTools < 10)
                {
                    t.SharedProps.Shortcut =
                        (Shortcut)Enum.Parse(typeof(Shortcut), string.Format("Ctrl{0}", nbrOfTools));
                    t.SharedProps.ToolTipText = string.Format("Shortcut {0}", t.SharedProps.Shortcut);
                }

                if (connect)
                {
                    RibbonEventHandlers.btSvr_ToolClick(btSvr, new ToolClickEventArgs(btSvr, null));
                }
                return true;
            }
            else
            {
                MessageBox.Show("Server already added", DialogHelper.Instance.GetApplicationName());
                return false;
            }
        }

        public void SaveKnownServers()
        {
            var sh = new SettingsIO();
            sh.SaveKnownServers(_knownServers);
        }

        public void LoadRecentProjects()
        {
            var sh = new SettingsIO();
            IList<Sql8rProjectFile> recentProjects = sh.LoadRecentProjects();

            for (int i = 0; i < recentProjects.Count; i++)
            {
                Sql8rProjectFile project = recentProjects[i];
                var pmt = (PopupMenuTool)_view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools["pmtRecent"];
                var bt = new ButtonTool(project.Path);
                if (!_view.tbManager.Tools.Exists(bt.Key))
                {
                    bt.Tag = project.Path;
                    bt.SharedProps.Caption = project.Name;
                    bt.SharedProps.ToolTipText = project.Path;
                    bt.SharedProps.AppearancesSmall.Appearance.Image = 1;

                    _view.tbManager.Tools.Add(bt);
                    int recentId = pmt.Tools.Add(bt);
                    pmt.Tools[recentId].Tag = bt.Tag;
                }
            }
        }

        //--------------------------------------------------------------------------------------------------------------















        public void Init()
        {
            setupOther();
            setupConnectionTab();
            setupServerDatabaseTab();
            setupTableColumnIndexTab();
            setupViewUspUdfTab();
            setupAssemblyTab();
            setupExternalToolsAll();
            setupWindowTab();
            setupHelpTab();
        }

        public MainForm View
        {
            get { return _view; }
            set { _view = value; }
        }

        public DialogResult ShowDialog()
        {
            throw new SQL8rException("Do not use this method, the ribbon presenter cannot show anything. It's used by MainPresenter");
        }

        public void Show()
        {
            ShowDialog();
        }

        private void setupOther()
        {
            // Quick Access

            var btConnect = new ButtonTool("btConnect");
            btConnect.SharedProps.Caption = "Connect...";
            btConnect.Tag = "ConnectToBrand";
            btConnect.SharedProps.AppearancesSmall.Appearance.Image = 6;

            _view.tbManager.Tools.Add(btConnect);

            _view.tbManager.Ribbon.QuickAccessToolbar.Tools.Add(btConnect);

            // Footer

            var btExit = new ButtonTool("btExit");
            btExit.SharedProps.Caption = "Exit SQL8r";
            btExit.SharedProps.AppearancesSmall.Appearance.Image = 2;
            btExit.SharedProps.DisplayStyle = ToolDisplayStyle.ImageAndText;
            btExit.ToolClick += RibbonEventHandlers.btExit_ToolClick;

            _view.tbManager.Tools.Add(btExit);

            _view.tbManager.Ribbon.ApplicationMenu.FooterToolbar.Tools.Add(btExit);

            // Left ToolArea

            var btOpenProject = new ButtonTool("btOpenProject");
            btOpenProject.SharedProps.Caption = "Open Project";

            var btImportProject = new ButtonTool("btImportProject");
            btImportProject.SharedProps.Caption = "Import Project";

            var pmtRecent = new PopupMenuTool("pmtRecent");
            pmtRecent.SharedProps.Caption = "Recent Projects";
            pmtRecent.Tag = "Recent";

            _view.tbManager.Tools.Add(btImportProject);
            _view.tbManager.Tools.Add(btOpenProject);
            _view.tbManager.Tools.Add(pmtRecent);

            _view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools.Add(btOpenProject);
            _view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools.Add(btImportProject);
            _view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools.Add(btConnect);

            int recentId = _view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools.Add(pmtRecent);
            _view.tbManager.Ribbon.ApplicationMenu.ToolAreaLeft.Tools[recentId].Tag = pmtRecent.Tag;

            // Right ToolArea

            var mdiWindowListTool = new MdiWindowListTool("MDIWindowList");

            _view.tbManager.Tools.Add(mdiWindowListTool);

            _view.tbManager.Ribbon.ApplicationMenu.ToolAreaRight.Tools.Add(mdiWindowListTool);
        }


        private void setupConnectionTab()
        {
            var pmtConnect = new PopupMenuTool("ConnectToBrand");
            pmtConnect.SharedProps.Caption = "Connect...";
            pmtConnect.SharedProps.AppearancesSmall.Appearance.Image = 6;
            pmtConnect.InstanceProps.PreferredSizeOnRibbon = RibbonToolSize.Large;
            pmtConnect.Tag = "ConnectToBrand";

            foreach (ServerVersionId version in DatabaseManagerFactory.Instance.GetSupportedVendors())
            {
                var btServer = new ButtonTool(version.ToString());
                btServer.SharedProps.Caption = version.ToString();

				if (!_view.tbManager.Tools.Exists(btServer.Key))
				{
					_view.tbManager.Tools.Add(btServer);
					pmtConnect.Tools.Add(btServer);
				}
            }

            var pmtRemove = new PopupMenuTool("Remove");
            pmtRemove.SharedProps.Caption = "Remove";
            pmtRemove.Tag = "RemoveConnection";


            _view.tbManager.Tools.Add(pmtConnect);
            _view.tbManager.Tools.Add(pmtRemove);


            var rtConnection = new RibbonTab("rtConnection", "Connection");
            var rgConnect = new RibbonGroup("rgConnect", "Connect");
            var rgKnownServers = new RibbonGroup("rgKnownServers", "Known Servers");
            var rgEditKnownServers = new RibbonGroup("rgEditKnownServers", "Edit Servers");

            int connectId = rgConnect.Tools.Add(pmtConnect);
            rgConnect.Tools[connectId].Tag = pmtConnect.Tag;
            rtConnection.Groups.Add(rgConnect);
            rtConnection.Groups.Add(rgKnownServers);
            rtConnection.Groups.Add(rgEditKnownServers);

            int removetId = rgEditKnownServers.Tools.Add(pmtRemove);
            rgEditKnownServers.Tools[removetId].Tag = pmtRemove.Tag;

            _view.tbManager.Ribbon.Tabs.Add(rtConnection);
        }

        private void setupServerDatabaseTab()
        {
            // Server Tab

            var btServerProperties = new ButtonTool("btServerProperties");
            btServerProperties.SharedProps.Caption = "Server Properties";
            btServerProperties.SharedProps.AppearancesSmall.Appearance.Image = 6;

            var btCreateDatabase = new ButtonTool("btCreateDatabase");
            btCreateDatabase.SharedProps.Caption = "Create Database";
            btCreateDatabase.SharedProps.AppearancesSmall.Appearance.Image = 17;

            _view.tbManager.Tools.Add(btCreateDatabase);
            _view.tbManager.Tools.Add(btServerProperties);

            var rtServer = new RibbonTab("rtServer", "Server, Database");
            var rgServer = new RibbonGroup("rgServer", "Server");

            rgServer.Tools.Add(btCreateDatabase);
            rgServer.Tools.Add(btServerProperties);
            rtServer.Groups.Add(rgServer);

            _view.tbManager.Ribbon.Tabs.Add(rtServer);


            var btDatabaseProperties = new ButtonTool("btDatabaseProperties");
            btDatabaseProperties.SharedProps.Caption = "Database Properties";
            btDatabaseProperties.SharedProps.AppearancesSmall.Appearance.Image = 17;

            //var btAnalyzeDatabase = new ButtonTool("btAnalyzeDatabase");
            //btAnalyzeDatabase.SharedProps.Caption = "Analyze Database";
            //btAnalyzeDatabase.SharedProps.AppearancesSmall.Appearance.Image = 17;

            var btCreateTable = new ButtonTool("btCreateTable");
            btCreateTable.SharedProps.Caption = "Create Table";
            btCreateTable.SharedProps.AppearancesSmall.Appearance.Image = 4;

            var btCreateView = new ButtonTool("btCreateView");
            btCreateView.SharedProps.Caption = "Create View";
            btCreateView.SharedProps.AppearancesSmall.Appearance.Image = 7;

            var btCreateProcedure = new ButtonTool("btCreateProcedure");
            btCreateProcedure.SharedProps.Caption = "Create Procedure";
            //  btCreateProcedure.SharedProps.AppearancesSmall.Appearance.Image = 17;

            var btCreateFunction = new ButtonTool("btCreateFunction");
            btCreateFunction.SharedProps.Caption = "Create Function";
            //  btCreateFunction.SharedProps.AppearancesSmall.Appearance.Image = 17;

            _view.tbManager.Tools.Add(btDatabaseProperties);
            _view.tbManager.Tools.Add(btCreateTable);
            _view.tbManager.Tools.Add(btCreateView);
            _view.tbManager.Tools.Add(btCreateProcedure);
            _view.tbManager.Tools.Add(btCreateFunction);

            //      var rtDatabase = new RibbonTab("rtDatabase", "Database");
            var rgDatabase = new RibbonGroup("rgDatabase", "Database");

            rgDatabase.Tools.Add(btDatabaseProperties);
            rgDatabase.Tools.Add(btCreateTable);
            rgDatabase.Tools.Add(btCreateView);
            rgDatabase.Tools.Add(btCreateProcedure);
            rgDatabase.Tools.Add(btCreateFunction);
            rtServer.Groups.Add(rgDatabase);

            //   _view.tbManager.Ribbon.Tabs.Add(rtDatabase);
        }

        private void setupTableColumnIndexTab()
        {
            var btOpenTable = new ButtonTool("btOpenTable");
            btOpenTable.SharedProps.Caption = "Open Table";
            btOpenTable.SharedProps.AppearancesSmall.Appearance.Image = 4;

            var btScriptTable = new ButtonTool("btScriptTable");
            btScriptTable.SharedProps.Caption = "Script Table";
            btScriptTable.SharedProps.AppearancesSmall.Appearance.Image = 4;

            var btAnalyzeTable = new ButtonTool("btAnalyzeTable");
            btAnalyzeTable.SharedProps.Caption = "Analyze Table";
            btAnalyzeTable.SharedProps.AppearancesSmall.Appearance.Image = 4;

            var btAddColumn = new ButtonTool("btAddColumn");
            btAddColumn.SharedProps.Caption = "Add Column";
            btAddColumn.SharedProps.AppearancesSmall.Appearance.Image = 4;

            var btAddIndex = new ButtonTool("btAddIndex");
            btAddIndex.SharedProps.Caption = "Add Index";
            btAddIndex.SharedProps.AppearancesSmall.Appearance.Image = 4;

            _view.tbManager.Tools.Add(btOpenTable);
            _view.tbManager.Tools.Add(btScriptTable);
            _view.tbManager.Tools.Add(btAnalyzeTable);
            _view.tbManager.Tools.Add(btAddColumn);
            _view.tbManager.Tools.Add(btAddIndex);

            var rtTable = new RibbonTab("rtTable", "Table, Column, Index");
            var rgTable = new RibbonGroup("rgTable", "Table");

            rgTable.Tools.Add(btOpenTable);
            rgTable.Tools.Add(btScriptTable);
            rgTable.Tools.Add(btAnalyzeTable);
            rgTable.Tools.Add(btAddColumn);
            rgTable.Tools.Add(btAddIndex);
            rtTable.Groups.Add(rgTable);

            _view.tbManager.Ribbon.Tabs.Add(rtTable);

            // Column group

            var btAlterColumn = new ButtonTool("btAlterColumn");
            btAlterColumn.SharedProps.Caption = "Alter Column";
            btAlterColumn.SharedProps.AppearancesSmall.Appearance.Image = 11;

            _view.tbManager.Tools.Add(btAlterColumn);

            var rgColumn = new RibbonGroup("rgColumn", "Column");

            rgColumn.Tools.Add(btAlterColumn);
            rtTable.Groups.Add(rgColumn);

            // Index group

            var btRebuildIndex = new ButtonTool("btRebuildIndex");
            btRebuildIndex.SharedProps.Caption = "Rebuild Index";
            btRebuildIndex.SharedProps.AppearancesSmall.Appearance.Image = 11;

            var btReorganizeIndex = new ButtonTool("btReorganizeIndex");
            btReorganizeIndex.SharedProps.Caption = "Reorganize Index";
            btReorganizeIndex.SharedProps.AppearancesSmall.Appearance.Image = 11;

            _view.tbManager.Tools.Add(btRebuildIndex);
            _view.tbManager.Tools.Add(btReorganizeIndex);

            var rgIndex = new RibbonGroup("rgIndex", "Index");

            rgIndex.Tools.Add(btRebuildIndex);
            rgIndex.Tools.Add(btReorganizeIndex);
            rtTable.Groups.Add(rgIndex);


        }

        private void setupViewUspUdfTab()
        {
            var btOpenView = new ButtonTool("btOpenView");
            btOpenView.SharedProps.Caption = "Open View";
            btOpenView.SharedProps.AppearancesSmall.Appearance.Image = 7;

            var btEditView = new ButtonTool("btEditView");
            btEditView.SharedProps.Caption = "Edit View";
            btEditView.SharedProps.AppearancesSmall.Appearance.Image = 7;

            _view.tbManager.Tools.Add(btOpenView);
            _view.tbManager.Tools.Add(btEditView);

            var rtView = new RibbonTab("rtView", "View, USP, UDF");
            var rgView = new RibbonGroup("rgView", "View");

            rgView.Tools.Add(btOpenView);
            rgView.Tools.Add(btEditView);
            rtView.Groups.Add(rgView);

            _view.tbManager.Ribbon.Tabs.Add(rtView);

            // USP group

            var btExecUsp = new ButtonTool("btExecUsp");
            btExecUsp.SharedProps.Caption = "Exec USP";

            var btEditUsp = new ButtonTool("btEditUsp");
            btEditUsp.SharedProps.Caption = "Edit USP";

            _view.tbManager.Tools.Add(btExecUsp);
            _view.tbManager.Tools.Add(btEditUsp);

            var rgPanes = new RibbonGroup("rgUsp", "USP");

            rgPanes.Tools.Add(btExecUsp);
            rgPanes.Tools.Add(btEditUsp);
            rtView.Groups.Add(rgPanes);

            // UDF group

            var btExecUdf = new ButtonTool("btExecUdf");
            btExecUdf.SharedProps.Caption = "Exec UDF";

            var btEditUdf = new ButtonTool("btEditUdf");
            btEditUdf.SharedProps.Caption = "Edit UDF";

            _view.tbManager.Tools.Add(btExecUdf);
            _view.tbManager.Tools.Add(btEditUdf);

            var rgUdf = new RibbonGroup("rgUdf", "UDF");

            rgUdf.Tools.Add(btExecUdf);
            rgUdf.Tools.Add(btEditUdf);
            rtView.Groups.Add(rgUdf);
        }

        private void setupAssemblyTab()
        {
            var btCreateClrProcedure = new ButtonTool("btCreateClrProcedure");
            btCreateClrProcedure.SharedProps.Caption = "Create CLR USP";

            _view.tbManager.Tools.Add(btCreateClrProcedure);

            var rtAssembly = new RibbonTab("rtAssembly", "Assemblies");
            var rgAssembly = new RibbonGroup("rgAssembly", "Assemblies");

            rtAssembly.Groups.Add(rgAssembly);
            rgAssembly.Tools.Add(btCreateClrProcedure);

            _view.tbManager.Ribbon.Tabs.Add(rtAssembly);

        }

        private void setupWindowTab()
        {
            var btEditorWindow = new ButtonTool("btEditorWindow");
            btEditorWindow.SharedProps.Caption = "Editor";

            var btSearchWindow = new ButtonTool("btSearchWindow");
            btSearchWindow.SharedProps.Caption = "Search";

            var btTableUsageWindow = new ButtonTool("btTableUsageWindow");
            btTableUsageWindow.SharedProps.Caption = "Table Usage";

            _view.tbManager.Tools.Add(btEditorWindow);
            _view.tbManager.Tools.Add(btSearchWindow);
            _view.tbManager.Tools.Add(btTableUsageWindow);

            var rtWindows = new RibbonTab("rtWindows", "Windows");
            var rgWindows = new RibbonGroup("rgWindows", "Windows");

            rgWindows.Tools.Add(btEditorWindow);
            rgWindows.Tools.Add(btSearchWindow);
            rgWindows.Tools.Add(btTableUsageWindow);

            rtWindows.Groups.Add(rgWindows);

            _view.tbManager.Ribbon.Tabs.Add(rtWindows);

            // Pane group

            var btFilePane = new ButtonTool("btFilePane");
            btFilePane.SharedProps.Caption = "Files";

            var btDatabasePane = new ButtonTool("btDatabasePane");
            btDatabasePane.SharedProps.Caption = "Database";

            _view.tbManager.Tools.Add(btFilePane);
            _view.tbManager.Tools.Add(btDatabasePane);

            var rgPanes = new RibbonGroup("rgPanes", "Panes");

            rgPanes.Tools.Add(btFilePane);
            rgPanes.Tools.Add(btDatabasePane);
            rtWindows.Groups.Add(rgPanes);

            // Options group

            var btSaveOptions = new ButtonTool("btSaveOptions");
            btSaveOptions.SharedProps.Caption = "Save";

            var btLoadOptions = new ButtonTool("btLoadOptions");
            btLoadOptions.SharedProps.Caption = "Load";


            _view.tbManager.Tools.Add(btSaveOptions);
            _view.tbManager.Tools.Add(btLoadOptions);

            var rgOptions = new RibbonGroup("rgOptions", "Options");

            rgOptions.Tools.Add(btSaveOptions);
            rgOptions.Tools.Add(btLoadOptions);
            rtWindows.Groups.Add(rgOptions);

            // Themes group

            var btLoadTheme = new ButtonTool("btLoadTheme");
            btLoadTheme.SharedProps.Caption = "Load";

            _view.tbManager.Tools.Add(btLoadTheme);

            var rgThemes = new RibbonGroup("rgThemes", "Themes");

            rgThemes.Tools.Add(btLoadTheme);
            rtWindows.Groups.Add(rgThemes);
        }

        private void setupHelpTab()
        {
            var btAbout = new ButtonTool("btAbout");
            btAbout.SharedProps.Caption = "About";
            btAbout.SharedProps.AppearancesSmall.Appearance.Image = 10;
            btAbout.ToolClick += RibbonEventHandlers.btAbout_ToolClick;

            var btSqlHelp = new ButtonTool("btSqlHelp");
            btSqlHelp.SharedProps.Caption = "SQL Help";
            btSqlHelp.SharedProps.AppearancesSmall.Appearance.Image = 10;
            btSqlHelp.ToolClick += RibbonEventHandlers.btSqlHelp_ToolClick;

            var btUpgradeCheck = new ButtonTool("btUpgradeCheck");
            btUpgradeCheck.SharedProps.Caption = "Upgrade Check";
            btUpgradeCheck.SharedProps.AppearancesSmall.Appearance.Image = 10;
            btUpgradeCheck.ToolClick += RibbonEventHandlers.btUpgradeCheck_ToolClick;

            _view.tbManager.Tools.Add(btAbout);
            _view.tbManager.Tools.Add(btSqlHelp);
            _view.tbManager.Tools.Add(btUpgradeCheck);

            var rtHelp = new RibbonTab("rtHelp", "Help");
            var rgAbout = new RibbonGroup("rgAbout", "About");

            rgAbout.Tools.Add(btAbout);
            rgAbout.Tools.Add(btSqlHelp);
            rgAbout.Tools.Add(btUpgradeCheck);
            rtHelp.Groups.Add(rgAbout);

            _view.tbManager.Ribbon.Tabs.Add(rtHelp);
        }


        private void setupExternalToolsAll()
        {
            var rtTools = new RibbonTab("rtTools", "Tools");
            _view.tbManager.Ribbon.Tabs.Add(rtTools);

            setupExternalTools10(rtTools);
            setupExternalTools9(rtTools);
            setupExternalToolsWindows(rtTools);
        }


        private void setupExternalTools9(RibbonTab rtTools)
        {
            var rgMicrosoft9 = new RibbonGroup("rgMicrosoft9", "SQL Server 2005");
            //_view.tbManager.Ribbon.Tabs.Add(rtTools);

            //  string key1 = @"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\";
            const string keyTools9 = @"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\90\Tools";

            var toolsPath = Registry.GetValue(keyTools9, "Path", null) as string;
            var toolsPathVs = Registry.GetValue(keyTools9, "SqlToolsPath", null) as string;

            int toolsCount = setupExternalTools(rgMicrosoft9, toolsPath, toolsPathVs);
            if (toolsCount > 0)
            {
                rtTools.Groups.Add(rgMicrosoft9);
            }
        }

        private void setupExternalTools10(RibbonTab rtTools)
        {
            var rgMicrosoft10 = new RibbonGroup("rgMicrosoft10", "SQL Server 2008");
            //    rtTools.Groups.Add(rgMicrosoft10);
            //_view.tbManager.Ribbon.Tabs.Add(rtTools);

            //   string key1 = @"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\";
            const string keyTools10 = @"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\100\Tools\ClientSetup";

            var toolsPath = Registry.GetValue(keyTools10, "Path", null) as string;
            var toolsPathVs = Registry.GetValue(keyTools10, "SqlToolsPath", null) as string;

            int toolsCount = setupExternalTools(rgMicrosoft10, toolsPath, toolsPathVs);
            if (toolsCount > 0)
            {
                rtTools.Groups.Add(rgMicrosoft10);
            }
        }

        private int setupExternalTools(RibbonGroup rgMicrosoft, string toolsPath, string toolsPathVs)
        {
            if (!string.IsNullOrEmpty(toolsPath))
            {
                var fiProfiler = new FileInfo(toolsPath + @"\" + "profiler.exe");
                if (fiProfiler.Exists)
                {
                    var btProfiler10 = new ButtonTool("btProfiler10");
                    btProfiler10.SharedProps.Caption = "Profiler";
                    btProfiler10.Tag = fiProfiler.FullName;
                    btProfiler10.ToolClick += RibbonEventHandlers.btExternalTool_ToolClick;

                    _view.tbManager.Tools.Add(btProfiler10);
                    int pos = rgMicrosoft.Tools.Add(btProfiler10);
                    rgMicrosoft.Tools[pos].Tag = btProfiler10.Tag;
                }

                var fiPs = new FileInfo(toolsPath + @"\" + "sqlps.exe");
                if (fiPs.Exists)
                {
                    var btSqlPs10 = new ButtonTool("btSqlPs10");
                    btSqlPs10.SharedProps.Caption = "SQL PowerShell";
                    btSqlPs10.Tag = fiPs.FullName;
                    btSqlPs10.ToolClick += RibbonEventHandlers.btExternalTool_ToolClick;

                    _view.tbManager.Tools.Add(btSqlPs10);
                    int pos = rgMicrosoft.Tools.Add(btSqlPs10);
                    rgMicrosoft.Tools[pos].Tag = btSqlPs10.Tag;
                }
            }

            if (!string.IsNullOrEmpty(toolsPathVs))
            {
                var fiCopyDb = new FileInfo(toolsPathVs + @"\" + "CopyDatabaseWizard.exe");
                if (fiCopyDb.Exists)
                {
                    var btCopyDatabaseWizard10 = new ButtonTool("btCopyDatabaseWizard10");
                    btCopyDatabaseWizard10.SharedProps.Caption = "Copy Database Wizard";
                    btCopyDatabaseWizard10.Tag = fiCopyDb.FullName;
                    btCopyDatabaseWizard10.ToolClick += RibbonEventHandlers.btExternalTool_ToolClick;

                    _view.tbManager.Tools.Add(btCopyDatabaseWizard10);
                    int pos = rgMicrosoft.Tools.Add(btCopyDatabaseWizard10);
                    rgMicrosoft.Tools[pos].Tag = btCopyDatabaseWizard10.Tag;
                }

                var fiSsms = new FileInfo(toolsPathVs + @"\" + "ssms.exe");
                if (fiSsms.Exists)
                {
                    var btSsms10 = new ButtonTool("btSsms10");
                    btSsms10.SharedProps.Caption = "Management Studio";
                    btSsms10.Tag = fiSsms.FullName;
                    btSsms10.ToolClick += RibbonEventHandlers.btExternalTool_ToolClick;

                    _view.tbManager.Tools.Add(btSsms10);
                    int pos = rgMicrosoft.Tools.Add(btSsms10);
                    rgMicrosoft.Tools[pos].Tag = btSsms10.Tag;
                }
            }
            return rgMicrosoft.Tools.Count;
        }

        private void setupExternalToolsWindows(RibbonTab rtTools)
        {
            var rgMicrosoftW = new RibbonGroup("rgMicrosoftW", "Microsoft Windows");
            rtTools.Groups.Add(rgMicrosoftW);
            //  _view.tbManager.Ribbon.Tabs.Add(rtTools);

            string isPath = Environment.GetFolderPath(Environment.SpecialFolder.System);
            var fiNotepad = new FileInfo(isPath + @"\notepad.exe");
            if (fiNotepad.Exists)
            {
                var btNotepad = new ButtonTool("btNotepad");
                btNotepad.SharedProps.Caption = "Notepad";
                btNotepad.Tag = fiNotepad.FullName;
                btNotepad.ToolClick += RibbonEventHandlers.btExternalTool_ToolClick;

                _view.tbManager.Tools.Add(btNotepad);
                int pos = rgMicrosoftW.Tools.Add(btNotepad);
                rgMicrosoftW.Tools[pos].Tag = btNotepad.Tag;
            }
        }
    }
}