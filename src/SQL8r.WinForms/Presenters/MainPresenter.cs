using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using Infragistics.Win.UltraWinDock;
using Infragistics.Win.UltraWinTabbedMdi;
using Infragistics.Win.UltraWinToolbars;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.Common;
using SQL8r.Logic.Connection;
using SQL8r.Logic.DomainModel;
using SQL8r.Logic.DomainModel.Draggable;
using SQL8r.Logic.DomainModel.Search;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Helpers;
using SQL8r.Logic.Interfaces;
using SQL8r.ProjectManager;
using SQL8r.WinForms.Factories;
using SQL8r.WinForms.NodeTypes;
using SQL8r.WinForms.Presenters.DockedChildren;
using SQL8r.WinForms.Presenters.MdiChildren;
using SQL8r.WinForms.Views;
using SQL8r.WinForms.Views.MdiChildren;

namespace SQL8r.WinForms.Presenters
{
    public class MainPresenter : IPresenter, IViewPresenter<MainForm>
    {
        //
        // Members
        //

        private static MainPresenter _instance;
        private MainForm _view;
        private string[] filesToOpen;

        private MainPresenter()
        {


        }

        public static MainPresenter Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new MainPresenter();
                }
                return _instance;
            }
        }

        public MainForm View
        {
            get { return _view; }
            set { _view = value; }
        }

        //
        // Constructors
        //

        #region IPresenter<MainForm> Members

        public void Init(string[] args)
        {
            _instance = this;
            // _view = view;

            _view.FormClosing += view_FormClosing;
            _view.Load += _view_Load;

            //            Infragistics.Win.AppStyling.StyleManager.Load(@"C:\beanstalk\trunk\SQL8r\misc\styles\TestStyleSet.isl");

            _view.mdiManager.InitializeTab += mdiManager_InitializeTab;
            _view.mdiManager.TabSelected += mdiManager_TabDisplaying;

            _view.tvwSqlObjects.AfterSelect += tvwSqlObjects_AfterSelect;
            _view.tvwSqlObjects.AfterExpand += tvwSqlObjects_AfterExpand;
            _view.tvwSqlObjects.MouseDown += tvwSqlObjects_MouseDown;
            _view.tvwSqlObjects.DragOver += tvwSqlObjects_DragOver;
            _view.tvwSqlObjects.DragDrop += tvwSqlObjects_DragDrop;
            //      _view.tvwSqlObjects.Override.Sort = SortType.Ascending;
            //     _view.tvwSqlObjects.Nodes.Override.Sort = SortType.Ascending;

            _view.tbManager.ToolClick += toolbarsManager_ToolClick;
            _view.tbManager.QuickAccessToolbarModified += tbManager_QuickAccessToolbarModified;


            //make sure the panes has keys
            foreach (DockableControlPane dcp in _view.dockManager.ControlPanes)
            {
                dcp.Key = dcp.Text;
            }

            //   OpenMdiTab(MdiTabKeys.TableUsage);
            OpenMdiTab(MdiTabKeys.Search);
            //   OpenMdiTab(MdiTabKeys.CodeEditor);
            OpenMdiTab(MdiTabKeys.EditorWithDataGrid);

            OpenPane(DockedPaneKeys.Database);

            PresenterFactory.Instance.InitProjectPresenter();

            PresenterFactory.Instance.InitRibbonPresenter();
            //  var ribbon = new RibbonPresenter();
            //  ribbon.Init(_view);

            _view.tbManager.Ribbon.Caption = DialogHelper.Instance.GetApplicationName();
            loadSettings();

            filesToOpen = args;
        }

        private void mdiManager_TabDisplaying(object sender, MdiTabEventArgs e)
        {
            if (e.Tab.Key.Equals(MdiTabKeys.Search))
            {
                var p = (SearchPresenter)e.Tab.Tag;
                p.SetCurrentDatabase();
            }
        }

        void _view_Load(object sender, EventArgs e)
        {
            SplashPresenter.Instance.Close();

            if (filesToOpen.Length > 0)
            {

                foreach (string fileName in filesToOpen)
                {
                    string ext = Path.GetExtension(fileName);
                    if (ext.ToUpperInvariant().Equals(".SQLPROJ"))
                    {
                        ProjectPresenter.Instance.OpenProject(fileName);
                    }
                    else if (ext.ToUpperInvariant().Equals(".CSPROJ"))
                    {
                        ProjectPresenter.Instance.OpenMSBuildProject(fileName);
                    }
                    else if (ext.ToUpperInvariant().Equals(".VBPROJ"))
                    {
                        ProjectPresenter.Instance.OpenMSBuildProject(fileName);
                    }
                    else
                    {
                        ProjectPresenter.Instance.OpenFileFromProject(fileName);
                    }
                }
            }
        }

        //public void SetView(MainForm view)
        //{
        //    _view = view;
        //}

        public DialogResult ShowDialog()
        {
            return _view.ShowDialog();
        }

        public void Show()
        {
            _view.Show();
        }

        #endregion

        private EditorWithDataGridPresenter getPresenterForView(EditorWithDataGridChildForm f)
        {
            return (EditorWithDataGridPresenter)f.Tag;
        }

        private IList<string> checkOrSaveProjectAndFiles(bool performSave)
        {
            IList<string> filesToSave = new List<string>();

            if (_view.mdiManager.TabGroups.Count > 0)
            {
                foreach (MdiTab t in _view.mdiManager.TabGroups[0].Tabs)
                {
                    if (t.Form is EditorWithDataGridChildForm)
                    {
                        var f = t.Form as EditorWithDataGridChildForm;
                        EditorWithDataGridPresenter p = getPresenterForView(f);
                        if (p.EditorIsModified)
                        {
                            if (performSave)
                            {
                                p.SaveFile();

                                //                     f.txtEditor.Save(f.tslFilename.Text);
                            }
                            else
                            {
                                filesToSave.Add(f.tslFileName.Text);
                            }
                        }
                    }
                }
            }

            if (SQL8rProjectHandler.Instance.IsModified())
            {
                OpenPane(DockedPaneKeys.Files);
                if (performSave)
                {
                    SQL8rProjectHandler.Instance.SaveProject();
                }
                else
                {
                    filesToSave.Add(SQL8rProjectHandler.Instance.ProjectName);
                }
            }

            return filesToSave;
        }

        private void view_FormClosing(object sender, FormClosingEventArgs e)
        {
            IList<string> filesToSave = checkOrSaveProjectAndFiles(false);


            if (filesToSave.Count > 0)
            {
                var mfp = PresenterFactory.Instance.GetModifiedFilesPresenter();
                // mfp.Init(new ModifiedFilesDialog());
                DialogResult result = mfp.ShowFiles(filesToSave);

                if (result == DialogResult.Yes)
                {
                    checkOrSaveProjectAndFiles(true);
                }
                else if (result == DialogResult.Cancel)
                {
                    e.Cancel = true;
                }
            }

            saveSettings();
        }


        private void tvwSqlObjects_MouseDown(object sender, MouseEventArgs e)
        {
            // http://blog.lib.umn.edu/kuyp0005/think2/2007/05/c_dragdrop_and_doubleclick.html
            if (e.Button == MouseButtons.Left && e.Clicks == 1)
            {
                var tn = _view.tvwSqlObjects.GetNodeFromPoint(new Point(e.X, e.Y)) as TableNode;
                if (tn != null && !(tn is SystemTableNode))
                {
                    var dbn = tn.Parent.Parent as DatabaseNode;
                    var sn = dbn.Parent.Parent as ServerNode;

                    var dt = new DraggableTable(sn.ServerObject, dbn.DatabaseObject, tn.TableObject);

                    _view.tvwSqlObjects.DoDragDrop(dt, DragDropEffects.Copy | DragDropEffects.All);
                }
            }
        }

        private void tvwSqlObjects_DragOver(object sender, DragEventArgs e)
        {
            var node = e.Data.GetData(typeof(DraggableTable)) as DraggableTable;
            if (node != null)
            {
                Point clientPos = _view.tvwSqlObjects.PointToClient(new Point(e.X, e.Y));
                UltraTreeNode nodeAtPoint = _view.tvwSqlObjects.GetNodeFromPoint(clientPos);

                if (nodeAtPoint is TablesNode)
                {
                    e.Effect = DragDropEffects.Copy;
                }
                else
                {
                    e.Effect = DragDropEffects.None;
                }
            }
        }

        private void tvwSqlObjects_DragDrop(object sender, DragEventArgs e)
        {
            if (e.Data != null)
            {
                var node = e.Data.GetData(typeof(DraggableTable)) as DraggableTable;
                if (node != null)
                {
                    Point clientPos = _view.tvwSqlObjects.PointToClient(new Point(e.X, e.Y));
                    UltraTreeNode nodeAtPoint = _view.tvwSqlObjects.GetNodeFromPoint(clientPos);

                    if (nodeAtPoint is TablesNode)
                    {
                        // todo implement
                        MessageBox.Show("Copy Table - Not Implemented!", DialogHelper.Instance.GetApplicationName());
                    }
                }
            }
        }

        private void tbManager_QuickAccessToolbarModified(object sender, QuickAccessToolbarModifiedEventArgs e)
        {
            if (e.QuickAccessToolbarChangeType == QuickAccessToolbarChangeType.ToolAdded)
            {
                ToolBase tb = _view.tbManager.Ribbon.QuickAccessToolbar.Tools[e.Tool.Key];
                tb.Tag = e.Tool.Tag;
            }
        }

        private void tvwSqlObjects_AfterSelect(object sender, SelectEventArgs e)
        {
            if (e.NewSelections.Count > 0)
            {
                UltraTreeNode node = e.NewSelections[0];

                if (node.GetType() == typeof(ServerNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Server];
                }
                else if (node.GetType() == typeof(DatabaseNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Database];
                }
                else if (node.GetType() == typeof(TableNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Table];
                }
                else if (node.GetType() == typeof(SystemTableNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Table];
                }
                else if (node.GetType() == typeof(IndexNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Index];
                }
                else if (node.GetType() == typeof(ViewNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.View];
                }
                else if (node.GetType() == typeof(SystemViewNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.View];
                }
                else if (node.GetType() == typeof(ProcedureNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Procedure];
                }
                else if (node.GetType() == typeof(SystemProcedureNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Procedure];
                }
                else if (node.GetType() == typeof(FunctionNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Function];
                }
                else if (node.GetType() == typeof(SystemFunctionNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Function];
                }
                else if (node.GetType() == typeof(AssemblyNode))
                {
                    _view.tbManager.Ribbon.SelectedTab = _view.tbManager.Ribbon.Tabs[RibbonTabKeys.Assembly];
                }
            }
        }

        //
        // Event Handlers
        //

        private void mdiManager_InitializeTab(object sender, MdiTabEventArgs e)
        {
            e.Tab.Key = e.Tab.Form.Text;
            e.Tab.Tag = e.Tab.Form.Tag;
        }

        private void toolbarsManager_ToolClick(object sender, ToolClickEventArgs e)
        {

            // Server
            if (e.Tool.Key == "btCreateDatabase")
            {
                createDatabase();
            }
            else if (e.Tool.Key == "btServerProperties")
            {
                openServerProperties();
            }

            // Database
            else if (e.Tool.Key == "btDatabaseProperties")
            {
                openDatabaseProperties();
            }
            else if (e.Tool.Key == "btCreateTable")
            {
                createTable();
            }
            else if (e.Tool.Key == "btCreateView")
            {
                createView();
            }
            else if (e.Tool.Key == "btCreateProcedure")
            {
                createProcedure();
            }
            else if (e.Tool.Key == "btCreateFunction")
            {
                createFunction();
            }

            // Tables
            else if (e.Tool.Key == "btOpenTable")
            {
                openTable();
            }
            else if (e.Tool.Key == "btScriptTable")
            {
                editTable();
            }
            else if (e.Tool.Key == "btAnalyzeTable")
            {
                analyzeTable();
            }
            else if (e.Tool.Key == "btAddColumn")
            {
                addColumnToTable();
            }
            else if (e.Tool.Key == "btAddIndex")
            {
                addIndexToTable();
            }

            // Columns
            else if (e.Tool.Key == "btAlterColumn")
            {
                alterColumn();
            }

            // Index
            else if (e.Tool.Key == "btRebuildIndex")
            {
                rebuildIndex();
            }
            else if (e.Tool.Key == "btReorganizeIndex")
            {
                reorganizeIndex();
            }

            // Views
            else if (e.Tool.Key == "btOpenView")
            {
                openView();
            }
            else if (e.Tool.Key == "btEditView")
            {
                editView();
            }

            // USP
            else if (e.Tool.Key == "btExecUsp")
            {
                executeProcedure();
            }
            else if (e.Tool.Key == "btEditUsp")
            {
                editProcedure();
            }

            // UDF
            else if (e.Tool.Key == "btExecUdf")
            {
                executeFunction();
            }
            else if (e.Tool.Key == "btEditUdf")
            {
                editFunction();
            }

            // Assemblies
            else if (e.Tool.Key == "btCreateClrProcedure")
            {
                createClrUsp();
            }

            // Windows
            else if (e.Tool.Key == "btEditorWindow")
            {
                OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
            }
            else if (e.Tool.Key == "btSearchWindow")
            {
                OpenMdiTab(MdiTabKeys.Search);
            }
            else if (e.Tool.Key == "btTableUsageWindow")
            {
                OpenMdiTab(MdiTabKeys.TableUsage);
            }

            // Panes
            else if (e.Tool.Key == "btFilePane")
            {
                OpenPane(DockedPaneKeys.Files);
            }
            else if (e.Tool.Key == "btDatabasePane")
            {
                OpenPane(DockedPaneKeys.Database);
            }

            // Options
            else if (e.Tool.Key == "btSaveOptions")
            {
                saveSettings();
            }
            else if (e.Tool.Key == "btLoadOptions")
            {
                loadSettings();
            }

            // Themes
            else if (e.Tool.Key == "btLoadTheme")
            {
                loadTheme();
            }


            // Main Icon Menu
            else if (e.Tool.Key == "btOpenProject")
            {
                var ofd = DialogFactory.Instance.GetOpenProjectDialog();
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    ProjectPresenter.Instance.OpenProject(ofd.FileName);
                }
            }
            else if (e.Tool.Key == "btImportProject")
            {
                var ofd = DialogFactory.Instance.GetImportProjectDialog();
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    ProjectPresenter.Instance.OpenMSBuildProject(ofd.FileName);
                }
            }
            else if (e.Tool.Key == "btConnect")
            {
                var p = PresenterFactory.Instance.GetSelectDatabasePresenter(ServerVersionId.SqlServer_2008);
                if (p.ShowDialog() == DialogResult.OK)
                {
                    ServerConnectionSettings settings = p.GetConnection();
                    RibbonPresenter.Instance.AddKnownServer(settings, true);
                }
            }
            else if (e.Tool.OwningMenu != null)
            {
                PopupMenuTool pmt = e.Tool.OwningMenu;
                if (pmt.Tag.ToString() == "Recent")
                {
                    var path = (string)e.Tool.Tag;
                    ProjectPresenter.Instance.OpenProject(path);
                }
                else if (pmt.Tag.ToString() == "RemoveConnection")
                {
                    var btSvr = (ButtonTool)e.Tool.Tag;

                    RibbonPresenter.Instance.RemoveKnownServer(btSvr);
                    RibbonPresenter.Instance.RemoveKnownServer(e.Tool);
                }
                else if (pmt.Tag.ToString() == "ConnectToBrand")
                {
                    //if (e.Tool.Key == ServerVersionId.SqlServer_2005.ToString())
                    //{
                    //    var p = PresenterFactory.Instance.GetSelectDatabasePresenter(ServerVersionId.SqlServer_2005);
                    //    if (p.ShowDialog() == DialogResult.OK)
                    //    {
                    //        ServerConnectionSettings settings = p.GetConnection();
                    //        RibbonPresenter.Instance.AddKnownServer(settings);
                    //    }
                    //}
                    //else if (e.Tool.Key == ServerVersionId.SqlServer_2008.ToString())
                    //{
                    ServerVersionId ver = ServerVersionId.Parse(e.Tool.Key);
                    var p = PresenterFactory.Instance.GetSelectDatabasePresenter(ver);
                    if (p.ShowDialog() == DialogResult.OK)
                    {
                        ServerConnectionSettings settings = p.GetConnection();
                        RibbonPresenter.Instance.AddKnownServer(settings, true);
                    }
                    //}
                    //else if (e.Tool.Key == ServerVersionId.MySql_5.ToString())
                    //{
                    //    var p = PresenterFactory.Instance.GetSelectDatabasePresenter(ServerVersionId.MySql_5);
                    //    if (p.ShowDialog() == DialogResult.OK)
                    //    {
                    //        ServerConnectionSettings settings = p.GetConnection();
                    //        RibbonPresenter.Instance.AddKnownServer(settings);
                    //    }
                    //}
                    //else if (e.Tool.Key == ServerVersionId.SQLite.ToString())
                    //{
                    //    var p1 = ServerVersionId.Parse(e.Tool.Key);
                    //    var p = PresenterFactory.Instance.GetSelectDatabasePresenter(ServerVersionId.SQLite);
                    //    if (p.ShowDialog() == DialogResult.OK)
                    //    {
                    //        ServerConnectionSettings settings = p.GetConnection();
                    //        RibbonPresenter.Instance.AddKnownServer(settings);
                    //    }
                    //}
                }
            }
        }





        private void createDatabase()
        {
            var sn = getSelectedTreeNode() as ServerNode;
            if (sn != null)
            {
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateDatabase);
            }
        }

        private void openDatabaseProperties()
        {
            var dbn = getSelectedTreeNode() as DatabaseNode;
            if (dbn != null)
            {
                Sql8rDatabase db = dbn.DatabaseObject;
                var p = (PropertyGridPresenter)OpenMdiTab(MdiTabKeys.PropertyGrid);
                p.ShowObject(db);
            }
        }

        private void openServerProperties()
        {
            var sn = getSelectedTreeNode() as ServerNode;
            if (sn != null)
            {
                Sql8rServer s = sn.ServerObject;
                var p = (PropertyGridPresenter)OpenMdiTab(MdiTabKeys.PropertyGrid);
                p.ShowObject(s);
            }
        }

        internal void OpenPane(string paneKey)
        {
            _view.dockManager.ControlPanes[paneKey].Closed = false;
            _view.dockManager.ControlPanes[paneKey].Activate();
        }

        private void saveSettings()
        {
            var io = new SettingsIO();
            string isPath8 = io.GetDockSettingsFile();
            _view.dockManager.SaveAsXML(isPath8);

            RibbonPresenter.Instance.SaveKnownServers();
        }

        private void loadSettings()
        {
            var io = new SettingsIO();
            string isPath8 = io.GetDockSettingsFile();

            if (File.Exists(isPath8))
            {
                _view.dockManager.LoadFromXML(isPath8);
            }

            RibbonPresenter.Instance.LoadKnownServers();
            RibbonPresenter.Instance.LoadRecentProjects();
        }

        private void loadTheme()
        {
            OpenFileDialog fd = DialogFactory.Instance.GetOpenStyleDialog();
            if (fd.ShowDialog() == DialogResult.OK)
            {
                string fileName = fd.FileName;
                Infragistics.Win.AppStyling.StyleManager.Load(fileName);
            }

        }

        internal IPresenter OpenMdiTab(string tabName)
        {
            MdiTab tb = getMdiTabFromForm(tabName);
            IPresenter p1 = null;

            if (tb == null || !_view.mdiManager.TabGroups[0].Tabs.Contains(tb))
            {
                switch (tabName)
                {
                    case MdiTabKeys.Search:
                        p1 = PresenterFactory.Instance.GetSearchPresenter();
                        p1.Show();
                        break;
                    case MdiTabKeys.EditorWithDataGrid:
                        p1 = PresenterFactory.Instance.GetEditorWithDataGridPresenter();
                        p1.Show();
                        break;
                    case MdiTabKeys.TableUsage:
                        p1 = PresenterFactory.Instance.GetTableUsagePresenter();
                        p1.Show();
                        break;
                    case MdiTabKeys.PropertyGrid:
                        p1 = PresenterFactory.Instance.GetPropertyPresenter();
                        p1.Show();
                        break;
                }
            }
            else
            {
                _view.mdiManager.TabGroups[0].Tabs[tabName].Activate();
                p1 = (IPresenter)tb.Tag;

            }
            return p1;
        }

        private MdiTab getMdiTabFromForm(string name)
        {
            Form f2 = null;
            foreach (Form f in _view.MdiChildren)
            {
                if (f.Name.StartsWith(name, StringComparison.OrdinalIgnoreCase))
                {
                    f2 = f;
                    break;
                }
            }
            MdiTab tb = _view.mdiManager.TabFromForm(f2);
            return tb;
        }

        private void createTable()
        {
            var dbn = getSelectedTreeNode() as DatabaseNode;
            if (dbn != null)
            {
                Sql8rDatabase db = dbn.DatabaseObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateTable, db.Name);
            }
        }

        private void createView()
        {
            var dbn = getSelectedTreeNode() as DatabaseNode;
            if (dbn != null)
            {
                Sql8rDatabase db = dbn.DatabaseObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateView, db.Name);
            }
        }

        private void createProcedure()
        {
            var dbn = getSelectedTreeNode() as DatabaseNode;
            if (dbn != null)
            {
                Sql8rDatabase db = dbn.DatabaseObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateUSP, db.Name);
            }
        }

        private void createFunction()
        {
            var dbn = getSelectedTreeNode() as DatabaseNode;
            if (dbn != null)
            {
                Sql8rDatabase db = dbn.DatabaseObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateUDF, db.Name);
            }
        }

        private void openTable()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is TableNode)
            {
                TableNode tn;
                DatabaseNode dbn;

                if (node is SystemTableNode)
                {
                    tn = node as SystemTableNode;
                    dbn = tn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    tn = node as TableNode;
                    dbn = tn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                // Query q = man.GetViewContent(sn.Text, dbn.Text, v);
                // Query q;
                bool editable = hasKeyColumn(t);
                Query query = man.GetTableContent(svr, db, t, editable);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //      _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                p.OpenTable(query, t, editable);
            }
        }

        private bool hasKeyColumn(IColumnedObject t)
        {
            foreach (Sql8rColumn c in t.Columns.Values)
            {
                if (c.InPrimaryKey)
                {
                    return true;
                }
            }
            return false;
        }

        private void editTable()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is TableNode)
            {
                TableNode tn;
                DatabaseNode dbn;
                if (node is SystemTableNode)
                {
                    tn = node as SystemTableNode;
                    dbn = tn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    tn = node as TableNode;
                    dbn = tn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetTableQuery(svr, db, t);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);

                string fileName = string.Format("{0}.{1}", tn.SchemaName, tn.TableName);
                p.EditTable(q, fileName);
            }
        }

        private void analyzeTable()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is TableNode)
            {
                var tn = node as TableNode;
                var dbn = tn.ParentNode as DatabaseNode;
                var sn = dbn.Parent.Parent as ServerNode;

                Sql8rServer s = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var p = (TableUsagePresenter)OpenMdiTab(MdiTabKeys.TableUsage);

                string fileName = string.Format("{0}.{1}", tn.SchemaName, tn.TableName);
                p.ShowUsage(s, db, t, fileName);
            }
        }

        private void addColumnToTable()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is TableNode)
            {
                TableNode tn;
                DatabaseNode dbn;
                if (node is SystemTableNode)
                {
                    tn = node as SystemTableNode;
                    dbn = tn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    tn = node as TableNode;
                    dbn = tn.Parent.Parent as DatabaseNode;
                }
                var sn = dbn.Parent.Parent as ServerNode;

                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetAddColumnQuery(svr, db, t);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);

                string fileName = string.Format("{0}.{1}", tn.SchemaName, tn.TableName);
                p.AddColumnToTable(q, fileName);
            }
        }

        private void addIndexToTable()
        {
            var tn = getSelectedTreeNode() as TableNode;
            if (tn != null)
            {
                Sql8rTable t = tn.TableObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                p.OpenTemplate(SqlTemplateKeys.CreateIndex, t.Name);
            }
        }

        private void alterColumn()
        {
            var cn = getSelectedTreeNode() as ColumnNode;
            if (cn != null)
            {
                var tn = cn.Parent.Parent as TableNode;
                Sql8rTable t = tn.TableObject;

                Sql8rColumn c = t.Columns[cn.ID];
                //      var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //    p.OpenTemplate(SqlTemplateKeys.CreateIndex, t.Name);

                ServerNode sn = GetServerNode();
                Sql8rServer svr = sn.ServerObject;
                DatabaseNode dbn = GetDatabaseNode();
                Sql8rDatabase db = dbn.DatabaseObject;
                // todo : use getServerNode instead of PArent.PArent...
                // todo: why are templates and queries handled differently


                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetAlterColumnQuery(svr, db, t, c);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //                _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}", t.GetFullObjectName());
                p.EditView(q, fileName);
            }
        }

        // http://www.sql-server-performance.com/tips/rebuilding_indexes_p1.aspx
        private void rebuildIndex()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is IndexNode)
            {
                var tn = node.Parent.Parent as TableNode;
                DatabaseNode dbn;
                if (tn is SystemTableNode)
                {
                    dbn = tn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    dbn = tn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var iNode = node as IndexNode;
                Sql8rIndex i = iNode.IndexObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);

                var fac = PerformanceManagerFactory.Instance;
                IPerformanceManager man = fac.GetPerformanceManager(svr.ServerConnection);

                Query q = man.GetRebuildIndexQuery(svr, db, t, i);

                string fileName = string.Format("{0}", i.Name);
                p.EditIndex(q, fileName);
            }
        }

        private void reorganizeIndex()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is IndexNode)
            {
                var tn = node.Parent.Parent as TableNode;
                DatabaseNode dbn;
                if (tn is SystemTableNode)
                {
                    dbn = tn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    dbn = tn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rTable t = tn.TableObject;

                var inode = node as IndexNode;
                Sql8rIndex i = inode.IndexObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);

                var fac = PerformanceManagerFactory.Instance;
                IPerformanceManager man = fac.GetPerformanceManager(svr.ServerConnection);

                Query q = man.GetReorganizeIndexQuery(svr, db, t, i);

                string fileName = string.Format("{0}", i.Name);
                p.EditIndex(q, fileName);
            }
        }

        private void openView()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is ViewNode)
            {
                ViewNode vn;
                DatabaseNode dbn;

                if (node is SystemViewNode)
                {
                    vn = node as SystemViewNode;
                    dbn = vn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    vn = node as ViewNode;
                    dbn = vn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rView v = vn.ViewObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetViewContent(svr, db, v);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //              _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                //                string fileName = string.Format("{0}.{1}", vn.SchemaName, vn.ViewName);
                p.OpenView(q, v);
            }
        }

        private void editView()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is ViewNode)
            {
                ViewNode vn;
                DatabaseNode dbn;
                if (node is SystemViewNode)
                {
                    vn = node as SystemViewNode;
                    dbn = vn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    vn = node as ViewNode;
                    dbn = vn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rView v = vn.ViewObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetViewQuery(svr, db, v);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //                _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}.{1}", vn.SchemaName, vn.ViewName);
                p.EditView(q, fileName);
            }
        }

        private void executeFunction()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is FunctionNode)
            {
                FunctionNode fn;
                DatabaseNode dbn;
                if (node is SystemFunctionNode)
                {
                    fn = node as FunctionNode;
                    dbn = fn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    fn = node as FunctionNode;
                    dbn = fn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rFunction f = fn.FunctionObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query query = man.GetExecuteFunctionQuery(svr, db, f);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //              _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}.{1}", fn.SchemaName, fn.FunctionName);
                p.EditView(query, fileName);
            }
        }

        private void editFunction()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is FunctionNode)
            {
                FunctionNode fn;
                DatabaseNode dbn;
                if (node is SystemFunctionNode)
                {
                    fn = node as FunctionNode;
                    dbn = fn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    fn = node as FunctionNode;
                    dbn = fn.Parent.Parent as DatabaseNode;
                }

                // DatabaseNode dbn = fsn.Parent as DatabaseNode;
                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rFunction f = fn.FunctionObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetFunctionQuery(svr, db, f);

                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //           _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}.{1}", fn.SchemaName, fn.FunctionName);
                p.EditView(q, fileName);
            }
        }

        private void executeProcedure()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is ProcedureNode)
            {
                ProcedureNode spn;
                DatabaseNode dbn;
                if (node is SystemProcedureNode)
                {
                    spn = node as SystemProcedureNode;
                    dbn = spn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    spn = node as ProcedureNode;
                    dbn = spn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rProcedure p = spn.ProcedureObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetExecuteProcedureQuery(svr, db, p);

                var pres = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //_view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}.{1}", spn.SchemaName, spn.ViewName);
                pres.EditView(q, fileName);
            }
        }

        private void editProcedure()
        {
            UltraTreeNode node = getSelectedTreeNode();
            if (node is ProcedureNode)
            {
                ProcedureNode spn;
                DatabaseNode dbn;
                if (node is SystemProcedureNode)
                {
                    spn = node as SystemProcedureNode;
                    dbn = spn.Parent.Parent.Parent as DatabaseNode;
                }
                else
                {
                    spn = node as ProcedureNode;
                    dbn = spn.Parent.Parent as DatabaseNode;
                }

                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;
                Sql8rDatabase db = dbn.DatabaseObject;
                Sql8rProcedure p = spn.ProcedureObject;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);

                Query q = man.GetProcedureQuery(svr, db, p);

                var pres = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //               _view.mdiManager.TabGroups[0].Tabs[MdiTabKeys.EditorWithDataGrid].Activate();

                string fileName = string.Format("{0}.{1}", spn.SchemaName, spn.ViewName);
                pres.EditView(q, fileName);
            }
        }

        private void createClrUsp()
        {

            var dbn = getSelectedTreeNode() as AssemblyNode;
            if (dbn != null)
            {
                Sql8rAssembly db = dbn.AssemblyObject;
                var p = (EditorWithDataGridPresenter)OpenMdiTab(MdiTabKeys.EditorWithDataGrid);
                //          p.OpenTemplate(SqlTemplateKeys.CreateUDF, db.Name);
            }
            // TODO call editor. editor uses template
        }

        private void tvwSqlObjects_AfterExpand(object sender, NodeEventArgs e)
        {
            _view.tvwSqlObjects.BeginUpdate();

            if (e.TreeNode is TablesNode)
            {
                var tn = e.TreeNode as TablesNode;
                UltraTreeNode systemTablesNode = tn.Nodes[0];
                var dbn = tn.Parent as DatabaseNode;

                Sql8rDatabase db = dbn.DatabaseObject;

                if (0 == (tn.Nodes.Count + tn.Nodes[0].Nodes.Count - 1))
                {
                    startProgressIndication(db.Tables.Count);

                    foreach (Sql8rTable table in db.Tables)
                    {
                        if (table.IsSystemObject)
                        {
                            var tableNode = new SystemTableNode(table.Name, table.Schema);
                            tableNode.TableObject = table;

                            var columnsNode = new ColumnsNode();
                            columnsNode.Nodes.Override.Sort = SortType.Ascending;
                            tableNode.Nodes.Add(columnsNode);

                            var indexesNode = new IndexesNode();
                            indexesNode.Nodes.Override.Sort = SortType.Ascending;
                            tableNode.Nodes.Add(indexesNode);

                            systemTablesNode.Nodes.Add(tableNode);
                        }
                        else
                        {
                            var tableNode = new TableNode(table.Name, table.Schema);
                            tableNode.TableObject = table;

                            var columnsNode = new ColumnsNode();
                            columnsNode.Nodes.Override.Sort = SortType.Ascending;
                            tableNode.Nodes.Add(columnsNode);

                            var indexesNode = new IndexesNode();
                            indexesNode.Nodes.Override.Sort = SortType.Ascending;
                            tableNode.Nodes.Add(indexesNode);

                            tn.Nodes.Add(tableNode);
                        }
                        incrementProgreeIndication();
                        Application.DoEvents();
                    }
                }
            }
            else if (e.TreeNode is TableNode)
            {
                TableNode tn;

                if (e.TreeNode is SystemTableNode)
                {
                    tn = e.TreeNode as TableNode;
                }
                else
                {
                    tn = e.TreeNode as TableNode;
                }

                Sql8rTable table = tn.TableObject;
                UltraTreeNode columnsNode = e.TreeNode.Nodes[0];

                columnsNode.Nodes.Clear();
                foreach (Sql8rColumn col in table.Columns.Values)
                {
                    var cNode = new ColumnNode(col.NameSpec, col.ObjectId);
                    if (col.InPrimaryKey)
                    {
                        cNode.Override.NodeAppearance.Image = 5;
                        cNode.Override.ActiveNodeAppearance.Image = 5;
                    }
                    else
                    {
                        cNode.Override.NodeAppearance.Image = 11;
                        cNode.Override.ActiveNodeAppearance.Image = 11;
                    }
                    columnsNode.Nodes.Add(cNode);
                    Application.DoEvents();
                }

                UltraTreeNode indexesNode = e.TreeNode.Nodes[1];
                indexesNode.Nodes.Clear();
                foreach (Sql8rIndex idx in table.Indexes.Values)
                {
                    var iNode = new IndexNode(idx.Name);
                    iNode.IndexObject = idx;
                    if (idx.IsPrimaryKey)
                    {
                        iNode.Override.NodeAppearance.Image = 5;
                        iNode.Override.ActiveNodeAppearance.Image = 5;
                    }
                    else
                    {
                        iNode.Override.NodeAppearance.Image = 11;
                        iNode.Override.ActiveNodeAppearance.Image = 11;
                    }
                    indexesNode.Nodes.Add(iNode);
                    Application.DoEvents();
                }
            }
            else if (e.TreeNode is ViewsNode)
            {
                var vn = e.TreeNode as ViewsNode;
                UltraTreeNode systemViewsNode = vn.Nodes[0];
                var dbn = vn.Parent as DatabaseNode;
                //   var sn = dbn.Parent.Parent as ServerNode;
                //                Sql8rServer svr = sn.ServerObject;

                Sql8rDatabase db = dbn.DatabaseObject;

                if (0 == (vn.Nodes.Count + vn.Nodes[0].Nodes.Count - 1))
                {
                    startProgressIndication(db.Views.Count);

                    foreach (Sql8rView view in db.Views)
                    {
                        if (view.IsSystemObject)
                        {
                            var viewNode = new SystemViewNode(view.Name, view.Schema);
                            viewNode.ViewObject = view;
                            var columnsNode = new ColumnsNode();
                            viewNode.Nodes.Add(columnsNode);
                            systemViewsNode.Nodes.Add(viewNode);
                        }
                        else
                        {
                            var viewNode = new ViewNode(view.Name, view.Schema);
                            viewNode.ViewObject = view;
                            var columnsNode = new ColumnsNode();
                            viewNode.Nodes.Add(columnsNode);
                            vn.Nodes.Add(viewNode);
                        }
                        incrementProgreeIndication();
                        Application.DoEvents();
                    }
                }
            }
            else if (e.TreeNode is ViewNode)
            {
                ViewNode vn;

                if (e.TreeNode is SystemViewNode)
                {
                    vn = e.TreeNode as ViewNode;
                }
                else
                {
                    vn = e.TreeNode as ViewNode;
                }

                Sql8rView view = vn.ViewObject;
                UltraTreeNode columnsNode = e.TreeNode.Nodes[0];

                columnsNode.Nodes.Clear();
                foreach (Sql8rColumn col in view.Columns.Values)
                {
                    var cNode = new ColumnNode(col.NameSpec, col.ObjectId);
                    if (col.InPrimaryKey)
                    {
                        cNode.Override.NodeAppearance.Image = 5;
                        cNode.Override.ActiveNodeAppearance.Image = 5;
                    }
                    else
                    {
                        cNode.Override.NodeAppearance.Image = 11;
                        cNode.Override.ActiveNodeAppearance.Image = 11;
                    }
                    columnsNode.Nodes.Add(cNode);
                    Application.DoEvents();
                }
            }
            else if (e.TreeNode is ProceduresNode)
            {
                var spsn = e.TreeNode as ProceduresNode;
                UltraTreeNode systemSpsNode = spsn.Nodes[0];
                var dbn = spsn.Parent as DatabaseNode;
                //        var sn = dbn.Parent.Parent as ServerNode;
                //        Sql8rServer svr = sn.ServerObject;

                Sql8rDatabase db = dbn.DatabaseObject;

                if (0 == (spsn.Nodes.Count + spsn.Nodes[0].Nodes.Count - 1))
                {
                    startProgressIndication(db.Procedures.Count);

                    foreach (Sql8rProcedure sp in db.Procedures.Values)
                    {
                        if (sp.IsSystemObject)
                        {
                            var spNode = new SystemProcedureNode(sp.Name, sp.Schema);
                            spNode.ProcedureObject = sp;
                            systemSpsNode.Nodes.Add(spNode);
                        }
                        else
                        {
                            var spNode = new ProcedureNode(sp.Name, sp.Schema);
                            spNode.ProcedureObject = sp;
                            spsn.Nodes.Add(spNode);
                        }
                        incrementProgreeIndication();
                        Application.DoEvents();
                    }
                }
            }
            else if (e.TreeNode is FunctionsNode)
            {
                var fknsn = e.TreeNode as FunctionsNode;
                UltraTreeNode systemfknsNode = fknsn.Nodes[0];
                var dbn = fknsn.Parent as DatabaseNode;
                //        var sn = dbn.Parent.Parent as ServerNode;
                //        Sql8rServer svr = sn.ServerObject;

                Sql8rDatabase db = dbn.DatabaseObject;

                if (0 == (fknsn.Nodes.Count + fknsn.Nodes[0].Nodes.Count - 1))
                {
                    startProgressIndication(db.Functions.Count);

                    foreach (Sql8rFunction fkn in db.Functions.Values)
                    {
                        if (fkn.IsSystemObject)
                        {
                            var fknNode = new SystemFunctionNode(fkn.Name, fkn.Schema);
                            fknNode.FunctionObject = fkn;
                            systemfknsNode.Nodes.Add(fknNode);
                        }
                        else
                        {
                            var fknNode = new FunctionNode(fkn.Name, fkn.Schema);
                            fknNode.FunctionObject = fkn;
                            fknsn.Nodes.Add(fknNode);
                        }
                        incrementProgreeIndication();
                        Application.DoEvents();
                    }
                }
            }
            else if (e.TreeNode is AssembliesNode)
            {
                var asmsn = e.TreeNode as AssembliesNode;
                //      UltraTreeNode systemfknsNode = fknsn.Nodes[0];
                var dbn = asmsn.Parent as DatabaseNode;
                Sql8rDatabase db = dbn.DatabaseObject;
                var sn = dbn.Parent.Parent as ServerNode;
                Sql8rServer svr = sn.ServerObject;

                asmsn.Nodes.Clear();

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(svr.ServerConnection);
                man.GetServerOtherStuff(db);
                foreach (Sql8rAssembly asm in db.Assemblies.Values)
                {
                    var asmNode = new AssemblyNode(asm.Name);
                    asmNode.AssemblyObject = asm;

                    foreach (Sql8rAssemblyType type in asm.Types.Values)
                    {
                        var atNode = new AssemblyTypeNode(type.Name, type.Schema);
                        asmNode.Nodes.Add(atNode);
                    }
                    asmsn.Nodes.Add(asmNode);
                }
            }

            _view.tvwSqlObjects.EndUpdate();
        }

        private void startProgressIndication(int maxValue)
        {
            _view.sbMain.Panels[StatusBarPanelKeys.Progress].ProgressBarInfo.Value = 0;
            _view.sbMain.Panels[StatusBarPanelKeys.Progress].ProgressBarInfo.Maximum = maxValue;
        }

        private void incrementProgreeIndication()
        {
            try
            {
                _view.sbMain.Panels[StatusBarPanelKeys.Progress].ProgressBarInfo.Value++;
            }
            catch
            {

            }
        }



        public void ConnectToServer(ServerConnectionSettings settings)
        {
            var fac = DatabaseManagerFactory.Instance;
            IDatabaseManager man = fac.GetDatabaseManager(settings);

            Sql8rServer svr = man.GetServer();



            var serverNode = new ServerNode(string.Format("{0} - ({1})", svr.Name, svr.ServerVersion));
            int i = _view.tvwSqlObjects.Nodes.IndexOf(serverNode.Text);


            if (i < 0)
            {
                serverNode.ServerObject = svr;

                _view.tvwSqlObjects.Nodes.Add(serverNode);

                var databasesNode = new DatabasesNode();
                serverNode.Nodes.Add(databasesNode);
                databasesNode.Nodes.Override.Sort = SortType.Ascending;


                _view.tvwSqlObjects.BeginUpdate();
                foreach (Sql8rDatabase db in svr.Databases)
                {
                    var dbNode = new DatabaseNode(db.Name);
                    dbNode.DatabaseObject = db;
                    databasesNode.Nodes.Add(dbNode);


                    addTablesNode(dbNode, settings);
                    addViewsNode(dbNode, settings);
                    addProceduresNode(dbNode, settings);
                    addFunctionsNode(dbNode, settings);
                    addAssembliesNode(dbNode, settings);
                }
                _view.tvwSqlObjects.EndUpdate();
                serverNode.Expanded = true;
                databasesNode.Expanded = true;
            }
        }

        // Methods & Functions
        //

        private UltraTreeNode getSelectedTreeNode()
        {
            if (_view.tvwSqlObjects.SelectedNodes.Count > 0)
            {
                return _view.tvwSqlObjects.SelectedNodes[0];
            }
            return null;
        }

        public void SelectNode(SearchHit hit)
        {
            TreeNodesCollection nodes = _view.tvwSqlObjects.Nodes;
            //IList<ServerNode> list = new List<ServerNode>(nodes.Count);
            foreach (UltraTreeNode sNode in nodes)
            {
                var sn = sNode as ServerNode;
                if (sn != null)
                {
                    if (sn.ServerObject.Name.Equals(hit.Server))
                    {
                        OpenPane(DockedPaneKeys.Database);
                        sn.Expanded = true;
                        sn.Selected = true;

                        foreach (UltraTreeNode dbNode in sn.Nodes[0].Nodes)
                        {
                            var dbn = dbNode as DatabaseNode;
                            if (dbn != null)
                            {
                                if (dbn.DatabaseObject.Name.Equals(hit.Database))
                                {
                                    dbn.Parent.Expanded = true;
                                    dbn.Expanded = true;
                                    dbn.Selected = true;
                                    if (hit.GetObjectType() == SearchAreas.Table)
                                    {
                                        var tablesNode = dbn.Nodes[0].Nodes;

                                        if (hit.GetIsSystemObject())
                                        {
                                            tablesNode = dbn.Nodes[0].Nodes[0].Nodes;
                                        }

                                        foreach (UltraTreeNode tNode in tablesNode)
                                        {
                                            var tn = tNode as TableNode;
                                            if (tn != null)
                                            {
                                                if (tn.TableObject.Name.Equals(hit.Object))
                                                {
                                                    if (hit.GetIsSystemObject())
                                                    {
                                                        tn.Parent.Parent.Expanded = true;
                                                    }

                                                    tn.Parent.Expanded = true;
                                                    tn.Selected = true;
                                                }
                                            }
                                        }
                                    }
                                    else if (hit.GetObjectType() == SearchAreas.View)
                                    {
                                        var viewsNode = dbn.Nodes[1].Nodes;

                                        if (hit.GetIsSystemObject())
                                        {
                                            viewsNode = dbn.Nodes[1].Nodes[0].Nodes;
                                        }

                                        foreach (UltraTreeNode vNode in viewsNode)
                                        {
                                            var vn = vNode as ViewNode;
                                            if (vn != null)
                                            {
                                                if (vn.ViewObject.Name.Equals(hit.Object))
                                                {
                                                    if (hit.GetIsSystemObject())
                                                    {
                                                        vn.Parent.Parent.Expanded = true;
                                                    }

                                                    vn.Parent.Expanded = true;
                                                    vn.Selected = true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        public IList<ServerNode> GetServerNodes()
        {
            TreeNodesCollection nodes = _view.tvwSqlObjects.Nodes;
            IList<ServerNode> list = new List<ServerNode>(nodes.Count);
            foreach (UltraTreeNode node in nodes)
            {
                if (node is ServerNode)
                {
                    list.Add(node as ServerNode);
                }
            }
            return list;
        }

        public ServerNode GetServerNode()
        {
            UltraTreeNode n = getSelectedTreeNode();
            if (n == null)
            {
                n = _view.tvwSqlObjects.TopNode;
            }
            if (n != null)
            {
                while (n.Parent != null)
                {
                    n = n.Parent;
                }
            }
            return n as ServerNode;
        }

        public DatabaseNode GetDatabaseNode()
        {
            UltraTreeNode n = getSelectedTreeNode();

            while (n != null)
            {
                if (n is DatabaseNode)
                    break;
                n = n.Parent;
            }

            return n as DatabaseNode;
        }

        private void addTablesNode(DatabaseNode parentNode, ServerConnectionSettings settings)
        {
            var tablesNode = new TablesNode(settings.ServerVersion);
            tablesNode.Nodes.Override.Sort = SortType.Ascending;
            parentNode.Nodes.Add(tablesNode);

            var systemTablesNode = new SystemTablesNode(settings.ServerVersion);
            systemTablesNode.Nodes.Override.Sort = SortType.Ascending;
            tablesNode.Nodes.Add(systemTablesNode);
        }

        private void addViewsNode(DatabaseNode parentNode, ServerConnectionSettings settings)
        {
            var viewsNode = new ViewsNode(settings.ServerVersion);
            viewsNode.Nodes.Override.Sort = SortType.Ascending;
            parentNode.Nodes.Add(viewsNode);

            var systemViewsNode = new SystemViewsNode(settings.ServerVersion);
            systemViewsNode.Nodes.Override.Sort = SortType.Ascending;
            viewsNode.Nodes.Add(systemViewsNode);
        }

        private void addProceduresNode(DatabaseNode parentNode, ServerConnectionSettings settings)
        {
            var spsNode = new ProceduresNode(settings.ServerVersion);
            spsNode.Nodes.Override.Sort = SortType.Ascending;
            parentNode.Nodes.Add(spsNode);

            var systemSpsNode = new SystemProceduresNode(settings.ServerVersion);
            systemSpsNode.Nodes.Override.Sort = SortType.Ascending;
            spsNode.Nodes.Add(systemSpsNode);
        }

        private void addFunctionsNode(DatabaseNode parentNode, ServerConnectionSettings settings)
        {
            var fknsNode = new FunctionsNode(settings.ServerVersion);
            fknsNode.Nodes.Override.Sort = SortType.Ascending;
            parentNode.Nodes.Add(fknsNode);

            var systemFknsNode = new SystemFunctionsNode(settings.ServerVersion);
            systemFknsNode.Nodes.Override.Sort = SortType.Ascending;
            fknsNode.Nodes.Add(systemFknsNode);
        }

        private void addAssembliesNode(DatabaseNode parentNode, ServerConnectionSettings settings)
        {
            var asmsNode = new AssembliesNode(settings.ServerVersion);
            asmsNode.Nodes.Override.Sort = SortType.Ascending;
            parentNode.Nodes.Add(asmsNode);

            var asmNode = new AssemblyNode("<loading...>");
            asmNode.Nodes.Override.Sort = SortType.Ascending;
            asmsNode.Nodes.Add(asmNode);
        }

        public void SetError(string error)
        {
            _view.sbMain.Panels[StatusBarPanelKeys.Auto].Text = error;
        }

        #region Nested type: DockedPaneKeys

        internal static class DockedPaneKeys
        {
            internal static string Database = "Database";
            internal static string Files = "Files";
        }

        #endregion

        #region Nested type: FileTypes

        internal static class FileTypes
        {
            internal const string CSharp = ".CS";
            internal const string Folder = "FOLDER";
            internal const string SQL = ".SQL";
            internal const string VBNET = ".VB";
        }

        #endregion

        #region Nested type: MdiTabKeys

        internal static class MdiTabKeys
        {
            internal const string EditorWithDataGrid = "EditorWithDataGrid";
            //       internal const string CodeEditor = "CodeEditor";
            internal const string PropertyGrid = "PropertyGrid";
            internal const string Search = "Search";
            internal const string TableUsage = "TableUsage";
        }

        #endregion

        #region Nested type: SqlTemplateKeys

        internal static class SqlTemplateKeys
        {
            internal const string CreateDatabase = "OnServer.CreateDatabase";
            internal const string CreateTable = "InDatabase.CreateTable";
            internal const string CreateView = "InDatabase.CreateView";
            internal const string CreateIndex = "InTable.CreateIndex";
            internal const string CreateUSP = "InDatabase.CreateProcedure";
            internal const string CreateUDF = "InDatabase.CreateFunction";
        }

        #endregion

        #region Nested type: RibbonTabKeys

        private static class RibbonTabKeys
        {
            internal const string Connection = "rtConnection";

            internal const string Server = "rtServer";
            internal const string Database = "rtServer";

            internal const string View = "rtView";
            internal const string Procedure = "rtView";
            internal const string Function = "rtView";

            internal const string Table = "rtTable";
            internal static string Column = "rtTable";
            internal const string Index = "rtTable";

            internal const string Assembly = "rtAssembly";
            internal static string Tools = "rtTools";
            internal static string Windows = "rtWindows";
            internal static string Help = "rtHelp";
        }

        #endregion

        #region Nested type: StatusBarPanelKeys

        private static class StatusBarPanelKeys
        {
            //          internal const string Tables = "pTables";
            internal const string Auto = "pAuto";
            internal const string Progress = "pProgress";
            internal static string Caption = "pCaption";
        }

        #endregion
    }
}