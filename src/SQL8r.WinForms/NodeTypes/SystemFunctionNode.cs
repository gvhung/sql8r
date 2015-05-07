using System;
using System.Drawing;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class SystemFunctionNode : FunctionNode, ISystemObjectNode
    {
        public SystemFunctionNode(string name, string schema)
            : base(name, schema)
        {
            Override.NodeAppearance.ForeColor = Color.Red;
            Override.NodeAppearance.Image = 7;
            Override.ActiveNodeAppearance.Image = 7;
        }
    }
}