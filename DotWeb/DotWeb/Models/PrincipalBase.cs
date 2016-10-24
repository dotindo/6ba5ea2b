using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public class PrincipalBase
    {
        public PrincipalBase()
        {
        }

        public int Id { get; set; }

        public int AppId { get; set; }

        public virtual App App { get; set; }
    }
}
