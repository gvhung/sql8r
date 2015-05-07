using System;

namespace SQL8r.Logic.Common
{
    [Flags]
    public enum IndexAction
    {
        None,
        Reorganize,
        Rebuild
    } ;
}