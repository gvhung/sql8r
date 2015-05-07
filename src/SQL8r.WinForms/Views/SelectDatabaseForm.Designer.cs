namespace SQL8r.WinForms.Views
{
    partial class SelectDatabaseForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint1 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint2 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint3 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint4 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint5 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.ValueListItem valueListItem1 = new Infragistics.Win.ValueListItem();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint6 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint7 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint8 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint9 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint10 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.Layout.GridBagConstraint gridBagConstraint11 = new Infragistics.Win.Layout.GridBagConstraint();
            Infragistics.Win.UltraWinStatusBar.UltraStatusPanel ultraStatusPanel1 = new Infragistics.Win.UltraWinStatusBar.UltraStatusPanel();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SelectDatabaseForm));
            this.grpProperties = new System.Windows.Forms.GroupBox();
            this.pnlGrid = new Infragistics.Win.Misc.UltraGridBagLayoutPanel();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.txtServer = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.btnSelect = new System.Windows.Forms.Button();
            this.btnCreate = new System.Windows.Forms.Button();
            this.btnDrop = new System.Windows.Forms.Button();
            this.lblServerName = new System.Windows.Forms.Label();
            this.lblDatabaseVendor = new Infragistics.Win.Misc.UltraLabel();
            this.txtPassword = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.cboVendors = new Infragistics.Win.UltraWinEditors.UltraComboEditor();
            this.chkWindowsAuthentication = new Infragistics.Win.UltraWinEditors.UltraCheckEditor();
            this.lblPassword = new System.Windows.Forms.Label();
            this.txtUser = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.lblUserId = new System.Windows.Forms.Label();
            this.lblDatabaseName = new System.Windows.Forms.Label();
            this.txtDatabase = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.contextMenuStripPanel = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.showEntireExceptionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.googleItToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mSDNItToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.techNetSearchToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.StatusStripSelectDatabase = new Infragistics.Win.UltraWinStatusBar.UltraStatusBar();
            this.btnConnect = new Infragistics.Win.Misc.UltraButton();
            this.btnCancel = new Infragistics.Win.Misc.UltraButton();
            this.btnTest = new Infragistics.Win.Misc.UltraButton();
            this.erpServerNameRequired = new System.Windows.Forms.ErrorProvider(this.components);
            this.ToolTipManager = new Infragistics.Win.UltraWinToolTip.UltraToolTipManager(this.components);
            this.grpProperties.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlGrid)).BeginInit();
            this.pnlGrid.SuspendLayout();
            this.flowLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtServer)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cboVendors)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUser)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDatabase)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.erpServerNameRequired)).BeginInit();
            this.SuspendLayout();
            // 
            // grpProperties
            // 
            this.grpProperties.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.grpProperties.Controls.Add(this.pnlGrid);
            this.grpProperties.Location = new System.Drawing.Point(13, 12);
            this.grpProperties.Name = "grpProperties";
            this.grpProperties.Size = new System.Drawing.Size(458, 192);
            this.grpProperties.TabIndex = 0;
            this.grpProperties.TabStop = false;
            this.grpProperties.Text = "Connection properties";
            // 
            // pnlGrid
            // 
            this.pnlGrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlGrid.Controls.Add(this.flowLayoutPanel1);
            this.pnlGrid.Controls.Add(this.lblServerName);
            this.pnlGrid.Controls.Add(this.lblDatabaseVendor);
            this.pnlGrid.Controls.Add(this.txtPassword);
            this.pnlGrid.Controls.Add(this.cboVendors);
            this.pnlGrid.Controls.Add(this.chkWindowsAuthentication);
            this.pnlGrid.Controls.Add(this.lblPassword);
            this.pnlGrid.Controls.Add(this.txtUser);
            this.pnlGrid.Controls.Add(this.lblUserId);
            this.pnlGrid.Controls.Add(this.lblDatabaseName);
            this.pnlGrid.Controls.Add(this.txtDatabase);
            this.pnlGrid.ExpandToFitHeight = true;
            this.pnlGrid.Location = new System.Drawing.Point(6, 28);
            this.pnlGrid.Name = "pnlGrid";
            this.pnlGrid.Padding = new System.Windows.Forms.Padding(0, 0, 5, 0);
            this.pnlGrid.Size = new System.Drawing.Size(446, 158);
            this.pnlGrid.TabIndex = 0;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.flowLayoutPanel1.Controls.Add(this.txtServer);
            this.flowLayoutPanel1.Controls.Add(this.btnSelect);
            this.flowLayoutPanel1.Controls.Add(this.btnCreate);
            this.flowLayoutPanel1.Controls.Add(this.btnDrop);
            gridBagConstraint1.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint1.OriginX = 1;
            gridBagConstraint1.OriginY = 1;
            this.pnlGrid.SetGridBagConstraint(this.flowLayoutPanel1, gridBagConstraint1);
            this.flowLayoutPanel1.Location = new System.Drawing.Point(104, 29);
            this.flowLayoutPanel1.Margin = new System.Windows.Forms.Padding(0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.pnlGrid.SetPreferredSize(this.flowLayoutPanel1, new System.Drawing.Size(337, 20));
            this.flowLayoutPanel1.Size = new System.Drawing.Size(337, 28);
            this.flowLayoutPanel1.TabIndex = 12;
            // 
            // txtServer
            // 
            this.txtServer.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtServer.Location = new System.Drawing.Point(0, 0);
            this.txtServer.Margin = new System.Windows.Forms.Padding(0);
            this.txtServer.Name = "txtServer";
            this.txtServer.Size = new System.Drawing.Size(113, 21);
            this.txtServer.TabIndex = 1;
            this.txtServer.Text = ".";
            // 
            // btnSelect
            // 
            this.btnSelect.CausesValidation = false;
            this.btnSelect.Location = new System.Drawing.Point(116, 0);
            this.btnSelect.Margin = new System.Windows.Forms.Padding(3, 0, 3, 3);
            this.btnSelect.Name = "btnSelect";
            this.btnSelect.Size = new System.Drawing.Size(64, 24);
            this.btnSelect.TabIndex = 11;
            this.btnSelect.Text = "Open";
            this.btnSelect.UseVisualStyleBackColor = true;
            // 
            // btnCreate
            // 
            this.btnCreate.CausesValidation = false;
            this.btnCreate.Location = new System.Drawing.Point(186, 0);
            this.btnCreate.Margin = new System.Windows.Forms.Padding(3, 0, 3, 3);
            this.btnCreate.Name = "btnCreate";
            this.btnCreate.Size = new System.Drawing.Size(67, 24);
            this.btnCreate.TabIndex = 12;
            this.btnCreate.Text = "Create";
            this.btnCreate.UseVisualStyleBackColor = true;
            // 
            // btnDrop
            // 
            this.btnDrop.CausesValidation = false;
            this.btnDrop.Location = new System.Drawing.Point(259, 0);
            this.btnDrop.Margin = new System.Windows.Forms.Padding(3, 0, 3, 3);
            this.btnDrop.Name = "btnDrop";
            this.btnDrop.Size = new System.Drawing.Size(58, 24);
            this.btnDrop.TabIndex = 13;
            this.btnDrop.Text = "Drop";
            this.btnDrop.UseVisualStyleBackColor = true;
            // 
            // lblServerName
            // 
            this.lblServerName.AutoSize = true;
            gridBagConstraint2.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint2.OriginX = 0;
            gridBagConstraint2.OriginY = 1;
            this.pnlGrid.SetGridBagConstraint(this.lblServerName, gridBagConstraint2);
            this.lblServerName.Location = new System.Drawing.Point(0, 29);
            this.lblServerName.Name = "lblServerName";
            this.pnlGrid.SetPreferredSize(this.lblServerName, new System.Drawing.Size(104, 13));
            this.lblServerName.Size = new System.Drawing.Size(72, 13);
            this.lblServerName.TabIndex = 7;
            this.lblServerName.Text = "Server Name:";
            // 
            // lblDatabaseVendor
            // 
            this.lblDatabaseVendor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.lblDatabaseVendor.AutoSize = true;
            gridBagConstraint3.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint3.OriginX = 0;
            gridBagConstraint3.OriginY = 0;
            this.pnlGrid.SetGridBagConstraint(this.lblDatabaseVendor, gridBagConstraint3);
            this.lblDatabaseVendor.Location = new System.Drawing.Point(0, 0);
            this.lblDatabaseVendor.Name = "lblDatabaseVendor";
            this.pnlGrid.SetPreferredSize(this.lblDatabaseVendor, new System.Drawing.Size(104, 14));
            this.lblDatabaseVendor.Size = new System.Drawing.Size(78, 14);
            this.lblDatabaseVendor.TabIndex = 6;
            this.lblDatabaseVendor.Text = "Select Vendor:";
            // 
            // txtPassword
            // 
            this.txtPassword.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtPassword.Enabled = false;
            gridBagConstraint4.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint4.OriginX = 1;
            gridBagConstraint4.OriginY = 5;
            this.pnlGrid.SetGridBagConstraint(this.txtPassword, gridBagConstraint4);
            this.txtPassword.Location = new System.Drawing.Point(104, 137);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '*';
            this.pnlGrid.SetPreferredSize(this.txtPassword, new System.Drawing.Size(337, 15));
            this.txtPassword.Size = new System.Drawing.Size(334, 21);
            this.txtPassword.TabIndex = 5;
            // 
            // cboVendors
            // 
            this.cboVendors.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cboVendors.DropDownStyle = Infragistics.Win.DropDownStyle.DropDownList;
            gridBagConstraint5.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint5.OriginX = 1;
            gridBagConstraint5.OriginY = 0;
            this.pnlGrid.SetGridBagConstraint(this.cboVendors, gridBagConstraint5);
            valueListItem1.DataValue = "ValueListItem0";
            valueListItem1.DisplayText = "SQL Server";
            this.cboVendors.Items.AddRange(new Infragistics.Win.ValueListItem[] {
            valueListItem1});
            this.cboVendors.Location = new System.Drawing.Point(104, 0);
            this.cboVendors.Name = "cboVendors";
            this.pnlGrid.SetPreferredSize(this.cboVendors, new System.Drawing.Size(337, 21));
            this.cboVendors.Size = new System.Drawing.Size(334, 21);
            this.cboVendors.TabIndex = 0;
            // 
            // chkWindowsAuthentication
            // 
            this.chkWindowsAuthentication.Checked = true;
            this.chkWindowsAuthentication.CheckState = System.Windows.Forms.CheckState.Checked;
            gridBagConstraint6.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint6.OriginX = 1;
            gridBagConstraint6.OriginY = 3;
            this.pnlGrid.SetGridBagConstraint(this.chkWindowsAuthentication, gridBagConstraint6);
            this.chkWindowsAuthentication.Location = new System.Drawing.Point(104, 81);
            this.chkWindowsAuthentication.Name = "chkWindowsAuthentication";
            this.pnlGrid.SetPreferredSize(this.chkWindowsAuthentication, new System.Drawing.Size(337, 20));
            this.chkWindowsAuthentication.Size = new System.Drawing.Size(337, 28);
            this.chkWindowsAuthentication.TabIndex = 3;
            this.chkWindowsAuthentication.Text = "Windows Authentication";
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            gridBagConstraint7.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint7.OriginX = 0;
            gridBagConstraint7.OriginY = 5;
            this.pnlGrid.SetGridBagConstraint(this.lblPassword, gridBagConstraint7);
            this.lblPassword.Location = new System.Drawing.Point(0, 137);
            this.lblPassword.Name = "lblPassword";
            this.pnlGrid.SetPreferredSize(this.lblPassword, new System.Drawing.Size(104, 13));
            this.lblPassword.Size = new System.Drawing.Size(53, 13);
            this.lblPassword.TabIndex = 10;
            this.lblPassword.Text = "Password";
            // 
            // txtUser
            // 
            this.txtUser.Enabled = false;
            gridBagConstraint8.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint8.OriginX = 1;
            gridBagConstraint8.OriginY = 4;
            this.pnlGrid.SetGridBagConstraint(this.txtUser, gridBagConstraint8);
            this.txtUser.Location = new System.Drawing.Point(104, 109);
            this.txtUser.Name = "txtUser";
            this.pnlGrid.SetPreferredSize(this.txtUser, new System.Drawing.Size(337, 20));
            this.txtUser.Size = new System.Drawing.Size(334, 21);
            this.txtUser.TabIndex = 4;
            // 
            // lblUserId
            // 
            this.lblUserId.AutoSize = true;
            gridBagConstraint9.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint9.OriginX = 0;
            gridBagConstraint9.OriginY = 4;
            this.pnlGrid.SetGridBagConstraint(this.lblUserId, gridBagConstraint9);
            this.lblUserId.Location = new System.Drawing.Point(0, 109);
            this.lblUserId.Name = "lblUserId";
            this.pnlGrid.SetPreferredSize(this.lblUserId, new System.Drawing.Size(104, 20));
            this.lblUserId.Size = new System.Drawing.Size(43, 13);
            this.lblUserId.TabIndex = 9;
            this.lblUserId.Text = "User ID";
            // 
            // lblDatabaseName
            // 
            this.lblDatabaseName.AutoSize = true;
            gridBagConstraint10.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint10.OriginX = 0;
            gridBagConstraint10.OriginY = 2;
            this.pnlGrid.SetGridBagConstraint(this.lblDatabaseName, gridBagConstraint10);
            this.lblDatabaseName.Location = new System.Drawing.Point(0, 57);
            this.lblDatabaseName.Name = "lblDatabaseName";
            this.pnlGrid.SetPreferredSize(this.lblDatabaseName, new System.Drawing.Size(104, 13));
            this.lblDatabaseName.Size = new System.Drawing.Size(87, 13);
            this.lblDatabaseName.TabIndex = 8;
            this.lblDatabaseName.Text = "Database Name:";
            // 
            // txtDatabase
            // 
            this.txtDatabase.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            gridBagConstraint11.Fill = Infragistics.Win.Layout.FillType.Both;
            gridBagConstraint11.OriginX = 1;
            gridBagConstraint11.OriginY = 2;
            this.pnlGrid.SetGridBagConstraint(this.txtDatabase, gridBagConstraint11);
            this.txtDatabase.Location = new System.Drawing.Point(104, 57);
            this.txtDatabase.Name = "txtDatabase";
            this.pnlGrid.SetPreferredSize(this.txtDatabase, new System.Drawing.Size(337, 17));
            this.txtDatabase.Size = new System.Drawing.Size(334, 21);
            this.txtDatabase.TabIndex = 2;
            // 
            // contextMenuStripPanel
            // 
            this.contextMenuStripPanel.Name = "contextMenuStripPanel";
            this.contextMenuStripPanel.Size = new System.Drawing.Size(61, 4);
            // 
            // showEntireExceptionToolStripMenuItem
            // 
            this.showEntireExceptionToolStripMenuItem.Name = "showEntireExceptionToolStripMenuItem";
            this.showEntireExceptionToolStripMenuItem.Size = new System.Drawing.Size(32, 19);
            // 
            // googleItToolStripMenuItem
            // 
            this.googleItToolStripMenuItem.Name = "googleItToolStripMenuItem";
            this.googleItToolStripMenuItem.Size = new System.Drawing.Size(32, 19);
            // 
            // mSDNItToolStripMenuItem
            // 
            this.mSDNItToolStripMenuItem.Name = "mSDNItToolStripMenuItem";
            this.mSDNItToolStripMenuItem.Size = new System.Drawing.Size(32, 19);
            // 
            // techNetSearchToolStripMenuItem
            // 
            this.techNetSearchToolStripMenuItem.Name = "techNetSearchToolStripMenuItem";
            this.techNetSearchToolStripMenuItem.Size = new System.Drawing.Size(32, 19);
            // 
            // StatusStripSelectDatabase
            // 
            this.StatusStripSelectDatabase.Location = new System.Drawing.Point(0, 216);
            this.StatusStripSelectDatabase.Name = "StatusStripSelectDatabase";
            ultraStatusPanel1.SizingMode = Infragistics.Win.UltraWinStatusBar.PanelSizingMode.Automatic;
            this.StatusStripSelectDatabase.Panels.AddRange(new Infragistics.Win.UltraWinStatusBar.UltraStatusPanel[] {
            ultraStatusPanel1});
            this.StatusStripSelectDatabase.Size = new System.Drawing.Size(556, 23);
            this.StatusStripSelectDatabase.TabIndex = 4;
            this.StatusStripSelectDatabase.ViewStyle = Infragistics.Win.UltraWinStatusBar.ViewStyle.Office2007;
            // 
            // btnConnect
            // 
            this.btnConnect.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnConnect.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnConnect.Location = new System.Drawing.Point(478, 121);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(66, 23);
            this.btnConnect.TabIndex = 1;
            this.btnConnect.Text = "Connect";
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.CausesValidation = false;
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(478, 151);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(66, 23);
            this.btnCancel.TabIndex = 2;
            this.btnCancel.Text = "Close";
            // 
            // btnTest
            // 
            this.btnTest.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnTest.Location = new System.Drawing.Point(478, 181);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(66, 23);
            this.btnTest.TabIndex = 3;
            this.btnTest.Text = "Test";
            // 
            // erpServerNameRequired
            // 
            this.erpServerNameRequired.ContainerControl = this;
            // 
            // ToolTipManager
            // 
            this.ToolTipManager.ContainingControl = this;
            // 
            // SelectDatabaseForm
            // 
            this.AcceptButton = this.btnConnect;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.ClientSize = new System.Drawing.Size(556, 239);
            this.Controls.Add(this.btnTest);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.StatusStripSelectDatabase);
            this.Controls.Add(this.grpProperties);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MinimizeBox = false;
            this.Name = "SelectDatabaseForm";
            this.Text = "Connect to a database....";
            this.grpProperties.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlGrid)).EndInit();
            this.pnlGrid.ResumeLayout(false);
            this.pnlGrid.PerformLayout();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtServer)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtPassword)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cboVendors)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtUser)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDatabase)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.erpServerNameRequired)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox grpProperties;
        internal System.Windows.Forms.Label lblUserId;
        internal System.Windows.Forms.Label lblDatabaseName;
        internal System.Windows.Forms.Label lblPassword;
        internal System.Windows.Forms.Label lblServerName;
        private System.Windows.Forms.ContextMenuStrip contextMenuStripPanel;
        private System.Windows.Forms.ToolStripMenuItem showEntireExceptionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem googleItToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mSDNItToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem techNetSearchToolStripMenuItem;
        public Infragistics.Win.UltraWinStatusBar.UltraStatusBar StatusStripSelectDatabase;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtServer;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtDatabase;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtPassword;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtUser;
        public Infragistics.Win.UltraWinEditors.UltraCheckEditor chkWindowsAuthentication;
        public Infragistics.Win.Misc.UltraButton btnConnect;
        public Infragistics.Win.Misc.UltraButton btnCancel;
        public Infragistics.Win.Misc.UltraButton btnTest;
        private Infragistics.Win.Misc.UltraGridBagLayoutPanel pnlGrid;
        public System.Windows.Forms.ErrorProvider erpServerNameRequired;
        private Infragistics.Win.Misc.UltraLabel lblDatabaseVendor;
        public Infragistics.Win.UltraWinEditors.UltraComboEditor cboVendors;
        public System.Windows.Forms.Button btnSelect;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        public System.Windows.Forms.Button btnCreate;
        public System.Windows.Forms.Button btnDrop;
        public Infragistics.Win.UltraWinToolTip.UltraToolTipManager ToolTipManager;
    }
}