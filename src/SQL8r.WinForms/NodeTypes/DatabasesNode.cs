using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class DatabasesNode :UltraTreeNode, IFolderNode 
    {
        public DatabasesNode()
        {
            base.Text = "Databases";
            Override.NodeAppearance.Image = 0;
            Override.ActiveNodeAppearance.Image = 1;
        }

        public bool IsHidden { get; set; }

    }
}