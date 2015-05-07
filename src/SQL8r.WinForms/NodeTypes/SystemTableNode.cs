using System;
using System.Drawing;
using Infragistics.Win.UltraWinTree;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class SystemTableNode : TableNode, ISystemObjectNode
    {
        public SystemTableNode(string name, string schema)
            : base(name, schema)
        {
            Override.NodeAppearance.Image = 4;
            Override.ActiveNodeAppearance.Image = 4;
            Override.NodeAppearance.ForeColor = Color.Red;
        }

		public override UltraTreeNode ParentNode
		{
			get { return Parent.Parent.Parent; }
		}
    }
}