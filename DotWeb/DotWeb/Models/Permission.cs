using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public enum PermissionType
    {
        Read,
        Insert,
        Update,
        Delete,
        Print
    }

    public class Permission
    {
        public long Id { get; set; }

        public PermissionType PermissionType { get; set; }

        public long PermissionLevelId { get; set; }

        public virtual PermissionLevel PermissionLevel { get; set; }
    }
}
