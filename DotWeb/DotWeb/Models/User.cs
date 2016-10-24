using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public class User : PrincipalBase
    {
        public User()
        {
            UserGroups = new List<UserGroup>();
        }

        [Required, MaxLength(50)]
        public string Username { get; set; }

        [Required, MaxLength(50)]
        public string FirstName { get; set; }

        [MaxLength(50)]
        public string LastName { get; set; }

        [Required, MaxLength(100)]
        public string EmailAddress { get; set; }

        public ICollection<UserGroup> UserGroups { get; set; }
    }
}
