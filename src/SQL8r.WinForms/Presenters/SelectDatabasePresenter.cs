using System;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;
using Infragistics.Win;
using Infragistics.Win.UltraWinStatusBar;
using Infragistics.Win.UltraWinToolTip;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Helpers;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Views;

namespace SQL8r.WinForms.Presenters
{
    public class SelectDatabasePresenter : IPresenter, IViewPresenter<SelectDatabaseForm>
    {
        private ServerVersionId _currentVersion;
        private SelectDatabaseForm _view;
        private static SelectDatabasePresenter _instance;

        private SelectDatabasePresenter()
        {
        }

        public static SelectDatabasePresenter Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new SelectDatabasePresenter();
                }
                return _instance;
            }
        }

        #region IPresenter<SelectDatabaseForm> Members

        public void Init(ServerVersionId pversion)
        {
            _view.Load += SelectDbForm_Load;
            _view.StatusStripSelectDatabase.DoubleClick += StatusBarSelectDatabase_DoubleClick;
            _view.btnTest.Click += btnTest_Click;
            _view.chkWindowsAuthentication.CheckedChanged += cbWindowsAuthentication_CheckedChanged;
            _view.btnSelect.Click += btnSelect_Click;
            _view.btnCreate.Click += btnCreate_Click;
            _view.btnDrop.Click += btnDrop_Click;
            _view.txtServer.Validating += txtServer_Validating;
            _view.txtDatabase.Validating += txtDatabase_Validating;
            _view.cboVendors.SelectionChanged += cboVendors_SelectionChanged;

            _view.cboVendors.Items.Clear();
            foreach (ServerVersionId version in DatabaseManagerFactory.Instance.GetSupportedVendors())
            {
                ValueListItem item = _view.cboVendors.Items.Add(version);
                if (version == pversion)
                {
                    _view.cboVendors.SelectedItem = item;
                }
            }

            //if (_view.cboVendors.Items.Count > 0)
            //{
            //    _view.cboVendors.SelectedIndex = 0;
            //}

            setVersionSettings(pversion);
        }

        void btnSelect_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = DialogFactory.Instance.GetOpenSQLiteDialog();
            if (open.ShowDialog() == DialogResult.OK)
            {
                _view.txtDatabase.Text = open.FileName;
                _view.ActiveControl = _view.txtDatabase;
                _view.ActiveControl = _view.btnSelect;
            }
        }

        void btnCreate_Click(object sender, EventArgs e)
        {
            SaveFileDialog create = DialogFactory.Instance.GetCreateSQLiteDialog();
            if (create.ShowDialog() == DialogResult.OK)
            {
                _view.txtDatabase.Text = create.FileName;
                _view.ActiveControl = _view.txtDatabase;
                _view.ActiveControl = _view.btnSelect;

                var settings = new ServerConnectionSettings(_currentVersion, "");
                IDatabaseManager manager = DatabaseManagerFactory.Instance.GetDatabaseManager(settings);
                manager.CreateDatabase(create.FileName, true);
            }
        }

        void btnDrop_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = DialogFactory.Instance.GetOpenSQLiteDialog();
            if (open.ShowDialog() == DialogResult.OK)
            {
                _view.txtDatabase.Text = open.FileName;
                _view.ActiveControl = _view.txtDatabase;
                _view.ActiveControl = _view.btnSelect;

                var settings = new ServerConnectionSettings(_currentVersion, "");
                IDatabaseManager manager = DatabaseManagerFactory.Instance.GetDatabaseManager(settings);
                manager.DropDatabase(open.FileName);
            }
        }

        private void setFileBasedDb(bool supportsSelect, bool supportsCreate, bool supportsDrop)
        {

            _view.btnSelect.Enabled = supportsSelect;
            _view.btnSelect.Visible = supportsSelect;
            _view.btnCreate.Enabled = supportsCreate;
            _view.btnCreate.Visible = supportsCreate;
            _view.btnDrop.Enabled = supportsDrop;
            _view.btnDrop.Visible = supportsDrop;

        }

        private void setVersionSettings(ServerVersionId serverVersion)
        {
            //    _view.ToolTipManager.Enabled = false;
            _view.ToolTipManager.ResetUltraToolTip(_view.cboVendors);
            _view.ToolTipManager.HideToolTip();
            _currentVersion = serverVersion;
            if (serverVersion == ServerVersionId.SQLite_3)
            {

                _view.chkWindowsAuthentication.Checked = false;
                _view.chkWindowsAuthentication.Enabled = false;
                _view.txtServer.Enabled = false;
                _view.txtServer.Width = 100;
                _view.txtUser.Enabled = false;
                _view.txtPassword.Enabled = false;
                setFileBasedDb(true, true, true);
                if (_view.txtServer.Text.Equals("."))
                {
                    _view.txtServer.Text = "";
                }
            }
            else if (serverVersion == ServerVersionId.FireBird_2)
            {

                _view.chkWindowsAuthentication.Checked = false;
                _view.chkWindowsAuthentication.Enabled = false;
                _view.txtServer.Enabled = false;
                _view.txtServer.Width = 100;
                _view.txtUser.Enabled = false;
                _view.txtPassword.Enabled = false;
                setFileBasedDb(true, true, true);
                if (_view.txtServer.Text.Equals("."))
                {
                    _view.txtServer.Text = "";
                }
                if (!ElevationHelper.IsAdmin())
                {
                    // TODO specify with privilege we need
                    var ctrl = _view.cboVendors;
                    UltraToolTipInfo tip = _view.ToolTipManager.GetUltraToolTip(ctrl);
                    if (string.IsNullOrEmpty(tip.ToolTipText))
                    {
                        var info = new UltraToolTipInfo("Requires elevation, please restart SQL8r with more privileges",
                                                        ToolTipImage.Warning, "Warning", DefaultableBoolean.Default);
                      
                        _view.ToolTipManager.SetUltraToolTip(ctrl, info);
                    }
                    _view.ToolTipManager.ShowToolTip(ctrl, ctrl.PointToScreen(ctrl.Location));
                }
            }
            else if (serverVersion == ServerVersionId.ODBC_Access || serverVersion == ServerVersionId.ODBC_Excel)
            {
                _view.chkWindowsAuthentication.Checked = false;
                _view.chkWindowsAuthentication.Enabled = false;
                _view.txtServer.Enabled = false;
                _view.txtServer.Width = 100;
                _view.txtUser.Enabled = false;
                _view.txtPassword.Enabled = false;
                setFileBasedDb(true, false, true);
                if (_view.txtServer.Text.Equals("."))
                {
                    _view.txtServer.Text = "";
                }
            }
            else if (serverVersion == ServerVersionId.MySql_5)
            {

                _view.chkWindowsAuthentication.Checked = false;
                _view.chkWindowsAuthentication.Enabled = false;
                _view.txtServer.Enabled = true;
                _view.txtServer.Width = _view.txtDatabase.Width;
                _view.txtUser.Enabled = true;
                _view.txtPassword.Enabled = true;
                setFileBasedDb(false, false, false);
            }
            else if (serverVersion == ServerVersionId.SqlServer_2005 || serverVersion == ServerVersionId.SqlServer_2008)
            {

                _view.chkWindowsAuthentication.Enabled = true;
                _view.chkWindowsAuthentication.Checked = true;
                _view.txtServer.Enabled = true;
                _view.txtServer.Width = _view.txtDatabase.Width;
                _view.txtUser.Enabled = false;
                _view.txtPassword.Enabled = false;
                setFileBasedDb(false, false, false);
                if (string.IsNullOrEmpty(_view.txtServer.Text))
                {
                    _view.txtServer.Text = ".";
                }
            }
            else
            {
                throw new SQL8rException(string.Format("Unsupported ServerVersionId: {0}", serverVersion));
            }
        }

        private void cboVendors_SelectionChanged(object sender, EventArgs e)
        {
            ValueListItem item = _view.cboVendors.SelectedItem;
            ServerVersionId serverVersion = (ServerVersionId)item.DataValue;

            setVersionSettings(serverVersion);
        }

        private ServerVersionId getSelectedServerVersion()
        {
            ValueListItem item = _view.cboVendors.SelectedItem;
            ServerVersionId currentSetting = (ServerVersionId)item.DataValue;
            return currentSetting;
        }
        public SelectDatabaseForm View
        {
            get { return _view; }
            set { _view = value; }
        }

        public DialogResult ShowDialog()
        {
            return _view.ShowDialog();
        }

        public void Show()
        {
            _view.Show();
        }

        #endregion

        private void txtServer_Validating(object sender, CancelEventArgs e)
        {
            if (_view.txtServer.Text.Trim().Length == 0)
            {
                _view.erpServerNameRequired.SetError(_view.txtServer, "Cannot be empty");
                e.Cancel = true;
            }
        }
        private void txtDatabase_Validating(object sender, CancelEventArgs e)
        {
            ServerVersionId version = getSelectedServerVersion();
            if (version == ServerVersionId.FireBird_2 || version == ServerVersionId.SQLite_3 ||
                version == ServerVersionId.ODBC_Access || version == ServerVersionId.ODBC_Excel)
            {
                string dbFile = _view.txtDatabase.Text;
                if (File.Exists(dbFile))
                {
                    _view.txtServer.Text = Path.GetFileName(dbFile);
                }
                else
                {
                    _view.erpServerNameRequired.SetError(_view.txtDatabase, "Database not found");
                    e.Cancel = true;
                }
            }
        }

        private void SelectDbForm_Load(object sender, EventArgs e)
        {
            _view.StatusStripSelectDatabase.ContextMenuStrip = buildContextMenu();

        }

        private void btnTest_Click(object sender, EventArgs e)
        {
            var settings =
                new ServerConnectionSettings(getSelectedServerVersion(), _view.txtServer.Text, _view.txtDatabase.Text,
                                             _view.chkWindowsAuthentication.Checked, _view.txtUser.Text, _view.txtPassword.Text);

            try
            {
                Cursor.Current = Cursors.WaitCursor;

                var fac = DatabaseManagerFactory.Instance;
                IDatabaseManager man = fac.GetDatabaseManager(settings);

                Exception ex = man.TestConnection();
                if (ex != null)
                {
                    showStatusBarMessage(ex.Message, ex);
                }
                else
                {
                    showStatusBarMessage("Success", null);
                }
            }
            finally
            {
                Cursor.Current = Cursors.Default;
            }
        }

        private void cbWindowsAuthentication_CheckedChanged(object sender, EventArgs e)
        {
            _view.txtUser.Enabled = !_view.chkWindowsAuthentication.Checked;
            _view.txtPassword.Enabled = !_view.chkWindowsAuthentication.Checked;
        }

        private void StatusBarSelectDatabase_DoubleClick(object sender, EventArgs e)
        {
            UltraStatusPanel panel = _view.StatusStripSelectDatabase.Panels[0];
            var ex = panel.Tag as Exception;
            DialogHelper.Instance.ShowExceptionDialog(ex);
        }

        private void showStatusBarMessage(string message, Exception ex)
        {
            _view.StatusStripSelectDatabase.Panels[0].Text = message;
            _view.StatusStripSelectDatabase.Panels[0].Tag = ex;
        }

        private UltraStatusPanel getParentPanel(object sender)
        {
            var item = (ToolStripMenuItem)sender;
            var menu = (ContextMenuStrip)item.Owner;
            var bar = (UltraStatusBar)menu.SourceControl;
            UltraStatusPanel lbl = bar.Panels[0];
            return lbl;
        }

        private void showEntireExceptionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UltraStatusPanel panel = getParentPanel(sender);
            var ex = panel.Tag as Exception;
            //            if (panel.Tag != null)
            //          {
            DialogHelper.Instance.ShowExceptionDialog(ex);
            //                MessageBox.Show(panel.Tag.ToString(), DialogHelper.Instance.GetApplicationName());
            //        }
        }

        private void googleItToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UltraStatusPanel panel = getParentPanel(sender);
            var ex = panel.Tag as Exception;
            if (ex != null)
            {
                //                var ex = (Exception)panel.Tag;
                Process.Start(string.Format("http://www.google.com/search?q=%22{0}%22", ex.Message));
            }
        }

        private ContextMenuStrip buildContextMenu()
        {
            var showEntireExceptionToolStripMenuItem = new ToolStripMenuItem();
            showEntireExceptionToolStripMenuItem.Text = "Show entire exception";
            showEntireExceptionToolStripMenuItem.Click += showEntireExceptionToolStripMenuItem_Click;

            var googleItToolStripMenuItem = new ToolStripMenuItem();
            googleItToolStripMenuItem.Text = "Google it";
            googleItToolStripMenuItem.Click += googleItToolStripMenuItem_Click;


            var contextMenuStripPanel = new ContextMenuStrip();
            contextMenuStripPanel.Items.AddRange(new ToolStripItem[]
                                                     {
                                                         showEntireExceptionToolStripMenuItem,
                                                         googleItToolStripMenuItem,
                                                     });

            return contextMenuStripPanel;
        }

        public ServerConnectionSettings GetConnection()
        {
            var settings =
                new ServerConnectionSettings(getSelectedServerVersion(), _view.txtServer.Text, _view.txtDatabase.Text,
                                             _view.chkWindowsAuthentication.Checked, _view.txtUser.Text, _view.txtPassword.Text);

            return settings;
        }
    }
}