using System;
using System.Drawing;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class SystemViewNode : ViewNode, ISystemObjectNode
    {
        public SystemViewNode(string name, string schema)
            : base(name, schema)
        {
            Override.NodeAppearance.Image = 7;
            Override.ActiveNodeAppearance.Image = 7;
            Override.NodeAppearance.ForeColor = Color.Red;
        }
    }
}