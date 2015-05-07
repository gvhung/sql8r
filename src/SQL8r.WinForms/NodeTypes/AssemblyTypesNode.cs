using System;
using Infragistics.Win.UltraWinTree;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class AssemblyTypesNode : UltraTreeNode, IFolderNode
    {
        public AssemblyTypesNode()
        {
            base.Text = "Assembly Types";
            Override.NodeAppearance.Image = 0;
            Override.ActiveNodeAppearance.Image = 1;
        }

        public bool IsHidden { get; set; }

    }
}