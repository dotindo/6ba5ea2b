using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb
{
    public class Principal
    {
        [Key, MaxLength(129)]
        public string Id { get; set; }

        [NotMapped]
        public virtual string Name { get { return ""; } }
    }
}
