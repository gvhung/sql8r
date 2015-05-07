using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.Factories;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class FunctionsNode : UltraTreeNode, IFolderNode
    {
        public FunctionsNode(ServerVersionId ver)
        {
            base.Text = "Functions";
            Override.NodeAppearance.Image = 0;
            Override.ActiveNodeAppearance.Image = 1;
            
            if (ver == ServerVersionId.SQLite_3)
            {
                IsHidden = true;
            }
        }

        public bool IsHidden
        {
            get { return base.Visible; }
            set { base.Visible = !value; }
        }
    }
}