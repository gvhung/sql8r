namespace SQL8r.WinForms.Views.MdiChildren
{
    partial class TableUsageChildForm
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
            Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn ultraListViewSubItemColumn4 = new Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn("ulvcFragmentation");
            Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn ultraListViewSubItemColumn5 = new Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn("ulvcSpaceUsed");
            Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn ultraListViewSubItemColumn6 = new Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn("ulvcRecommendation");
            this.grbSpaceUsage = new Infragistics.Win.Misc.UltraGroupBox();
            this.txtIndexSpaceUsage = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.txtDataSpaceUsage = new Infragistics.Win.UltraWinEditors.UltraTextEditor();
            this.lvwIndexes = new Infragistics.Win.UltraWinListView.UltraListView();
            this.btnReorganize = new Infragistics.Win.Misc.UltraButton();
            this.btnRebuild = new Infragistics.Win.Misc.UltraButton();
            this.btnPerformRecommendation = new Infragistics.Win.Misc.UltraButton();
            ((System.ComponentModel.ISupportInitialize)(this.grbSpaceUsage)).BeginInit();
            this.grbSpaceUsage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtIndexSpaceUsage)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataSpaceUsage)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lvwIndexes)).BeginInit();
            this.SuspendLayout();
            // 
            // grbSpaceUsage
            // 
            this.grbSpaceUsage.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.grbSpaceUsage.Controls.Add(this.txtIndexSpaceUsage);
            this.grbSpaceUsage.Controls.Add(this.txtDataSpaceUsage);
            this.grbSpaceUsage.Location = new System.Drawing.Point(12, 12);
            this.grbSpaceUsage.Name = "grbSpaceUsage";
            this.grbSpaceUsage.Size = new System.Drawing.Size(775, 92);
            this.grbSpaceUsage.TabIndex = 3;
            this.grbSpaceUsage.Text = "Space Usage";
            // 
            // txtIndexSpaceUsage
            // 
            this.txtIndexSpaceUsage.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtIndexSpaceUsage.Location = new System.Drawing.Point(14, 57);
            this.txtIndexSpaceUsage.Name = "txtIndexSpaceUsage";
            this.txtIndexSpaceUsage.ReadOnly = true;
            this.txtIndexSpaceUsage.Size = new System.Drawing.Size(746, 21);
            this.txtIndexSpaceUsage.TabIndex = 1;
            // 
            // txtDataSpaceUsage
            // 
            this.txtDataSpaceUsage.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDataSpaceUsage.Location = new System.Drawing.Point(14, 29);
            this.txtDataSpaceUsage.Name = "txtDataSpaceUsage";
            this.txtDataSpaceUsage.ReadOnly = true;
            this.txtDataSpaceUsage.Size = new System.Drawing.Size(746, 21);
            this.txtDataSpaceUsage.TabIndex = 0;
            // 
            // lvwIndexes
            // 
            this.lvwIndexes.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.lvwIndexes.Location = new System.Drawing.Point(12, 127);
            this.lvwIndexes.MainColumn.DataType = typeof(string);
            this.lvwIndexes.MainColumn.Key = "ulvcName";
            this.lvwIndexes.MainColumn.Text = "Index Name";
            this.lvwIndexes.Name = "lvwIndexes";
            this.lvwIndexes.Size = new System.Drawing.Size(775, 289);
            ultraListViewSubItemColumn4.DataType = typeof(double);
            ultraListViewSubItemColumn4.Key = "ulvcFragmentation";
            ultraListViewSubItemColumn4.Text = "Fragmentation (%)";
            ultraListViewSubItemColumn4.Width = 125;
            ultraListViewSubItemColumn5.DataType = typeof(int);
            ultraListViewSubItemColumn5.Key = "ulvcSpaceUsed";
            ultraListViewSubItemColumn5.Text = "SpaceUsed (kb)";
            ultraListViewSubItemColumn5.Width = 125;
            ultraListViewSubItemColumn6.Key = "ulvcRecommendation";
            ultraListViewSubItemColumn6.Text = "Recommendation";
            ultraListViewSubItemColumn6.Width = 200;
            this.lvwIndexes.SubItemColumns.AddRange(new Infragistics.Win.UltraWinListView.UltraListViewSubItemColumn[] {
            ultraListViewSubItemColumn4,
            ultraListViewSubItemColumn5,
            ultraListViewSubItemColumn6});
            this.lvwIndexes.TabIndex = 0;
            this.lvwIndexes.View = Infragistics.Win.UltraWinListView.UltraListViewStyle.Details;
            this.lvwIndexes.ViewSettingsDetails.AllowColumnMoving = false;
            this.lvwIndexes.ViewSettingsDetails.CheckBoxStyle = Infragistics.Win.UltraWinListView.CheckBoxStyle.CheckBox;
            this.lvwIndexes.ViewSettingsDetails.ColumnHeaderStyle = Infragistics.Win.HeaderStyle.XPThemed;
            this.lvwIndexes.ViewSettingsDetails.FullRowSelect = true;
            // 
            // btnReorganize
            // 
            this.btnReorganize.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnReorganize.Location = new System.Drawing.Point(12, 422);
            this.btnReorganize.Name = "btnReorganize";
            this.btnReorganize.Size = new System.Drawing.Size(75, 23);
            this.btnReorganize.TabIndex = 4;
            this.btnReorganize.Text = "Reorganize";
            // 
            // btnRebuild
            // 
            this.btnRebuild.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnRebuild.Location = new System.Drawing.Point(93, 422);
            this.btnRebuild.Name = "btnRebuild";
            this.btnRebuild.Size = new System.Drawing.Size(75, 23);
            this.btnRebuild.TabIndex = 4;
            this.btnRebuild.Text = "Rebuild";
            // 
            // btnPerformRecommendation
            // 
            this.btnPerformRecommendation.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnPerformRecommendation.Location = new System.Drawing.Point(174, 422);
            this.btnPerformRecommendation.Name = "btnPerformRecommendation";
            this.btnPerformRecommendation.Size = new System.Drawing.Size(160, 23);
            this.btnPerformRecommendation.TabIndex = 5;
            this.btnPerformRecommendation.Text = "Perform Recommendation";
            // 
            // TableUsageChildForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(799, 458);
            this.Controls.Add(this.btnPerformRecommendation);
            this.Controls.Add(this.btnRebuild);
            this.Controls.Add(this.btnReorganize);
            this.Controls.Add(this.lvwIndexes);
            this.Controls.Add(this.grbSpaceUsage);
            this.Name = "TableUsageChildForm";
            this.Text = "TableUsage";
            ((System.ComponentModel.ISupportInitialize)(this.grbSpaceUsage)).EndInit();
            this.grbSpaceUsage.ResumeLayout(false);
            this.grbSpaceUsage.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtIndexSpaceUsage)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataSpaceUsage)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lvwIndexes)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        //private System.Windows.Forms.ToolStripPanel BottomToolStripPanel;
        //private System.Windows.Forms.ToolStripPanel TopToolStripPanel;
        //private System.Windows.Forms.ToolStripPanel RightToolStripPanel;
        //private System.Windows.Forms.ToolStripPanel LeftToolStripPanel;
        //private System.Windows.Forms.ToolStripContentPanel ContentPanel;
        private Infragistics.Win.Misc.UltraGroupBox grbSpaceUsage;
        public Infragistics.Win.UltraWinListView.UltraListView lvwIndexes;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtIndexSpaceUsage;
        public Infragistics.Win.UltraWinEditors.UltraTextEditor txtDataSpaceUsage;
        public Infragistics.Win.Misc.UltraButton btnReorganize;
        public Infragistics.Win.Misc.UltraButton btnRebuild;
        public Infragistics.Win.Misc.UltraButton btnPerformRecommendation;
     //   private System.Windows.Forms.ToolStripContainer toolStripContainer1;


    }
}