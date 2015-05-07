using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.Logic.Factories;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class AssembliesNode : UltraTreeNode, IFolderNode
    {
        public AssembliesNode(ServerVersionId ver)
        {
            base.Text = "Assemblies";
            Override.NodeAppearance.Image = 0;
            Override.ActiveNodeAppearance.Image = 1;

            if (ver == ServerVersionId.SQLite_3 || ver == ServerVersionId.ODBC_Access || ver == ServerVersionId.ODBC_Excel)
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