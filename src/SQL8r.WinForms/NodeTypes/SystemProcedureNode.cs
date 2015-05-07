using System;
using System.Drawing;
using SQL8r.WinForms.NodeTypes.Interfaces;

namespace SQL8r.WinForms.NodeTypes
{
    [Serializable]
    public class SystemProcedureNode : ProcedureNode, ISystemObjectNode
    {
        public SystemProcedureNode(string name, string schema)
            : base(name, schema)
        {
            Override.NodeAppearance.ForeColor = Color.Red;
            Override.NodeAppearance.Image = 7;
            Override.ActiveNodeAppearance.Image = 7;
        }
    }
}