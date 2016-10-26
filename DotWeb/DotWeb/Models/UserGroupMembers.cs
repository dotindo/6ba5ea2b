﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotWeb.Models
{
    public class UserGroupMembers
    {
        [Key, Column(Order=1)]
        public string UserId { get; set; }

        [Key, Column(Order=2)]
        public string GroupCode { get; set; }

        public virtual UserGroup Group { get; set; }
    }
}