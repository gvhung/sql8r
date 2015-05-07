namespace SQL8r.WinForms.Views.MdiChildren
{
    partial class PropertyGridChildForm
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
            this.pgGeneric = new System.Windows.Forms.PropertyGrid();
            this.SuspendLayout();
            // 
            // pgGeneric
            // 
            this.pgGeneric.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.pgGeneric.Location = new System.Drawing.Point(13, 13);
            this.pgGeneric.Name = "pgGeneric";
            this.pgGeneric.Size = new System.Drawing.Size(461, 310);
            this.pgGeneric.TabIndex = 0;
            // 
            // PropertyGridChildForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(486, 335);
            this.Controls.Add(this.pgGeneric);
            this.Name = "PropertyGridChildForm";
            this.Text = "PropertyGrid";
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.PropertyGrid pgGeneric;

    }
}