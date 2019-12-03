using System;
using System.Collections.Generic;

namespace MG.Models
{
    public partial class Mg
    {
        public int RoleId { get; set; }
        public string Role { get; set; }

        public Mg RoleNavigation { get; set; }
        public Mg InverseRoleNavigation { get; set; }
    }
}
