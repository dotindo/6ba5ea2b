using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public class PermissionLevel
    {
        public PermissionLevel()
        {
            Permissions = new List<Permission>();
        }

        public int Id { get; set; }

        [Required, MaxLength(50)]
        public string Name { get; set; }

        public ICollection<Permission> Permissions { get; set; }

        public int AppId { get; set; }
        public virtual App App { get; set; }
    }
}
