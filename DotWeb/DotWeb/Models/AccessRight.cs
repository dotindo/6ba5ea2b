using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public enum SecuredObjectType
    {
        App,
        ModuleGroup,
        Module
    }

    public class AccessRight
    {
        public long Id { get; set; }

        public int PrincipalId { get; set; }

        public virtual PrincipalBase Principal { get; set; }

        public int PermissionLevelId { get; set; }

        public virtual PermissionLevel PermissionLevel { get; set; }

        public int SecuredObjectId { get; set; }

        public SecuredObjectType SecuredObjectType { get; set; }
    }
}
