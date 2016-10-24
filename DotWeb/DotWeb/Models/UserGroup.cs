using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public class UserGroup : PrincipalBase
    {
        public UserGroup()
        {
            Users = new List<User>();
        }

        public string Name { get; set; }

        public ICollection<User> Users { get; set; }
    }
}
