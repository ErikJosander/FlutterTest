using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace Flutter_Hello_World_DB.Entities
{
    public class User : IdentityUser
    {
        [Required]
        [MaxLength(50)]
        public override string UserName { get; set; }
    }
}
