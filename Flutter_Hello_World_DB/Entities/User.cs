using Microsoft.AspNetCore.Identity;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Flutter_Hello_World_DB.Entities
{
    public class User : IdentityUser
    {
        /// <summary>
        /// The users username.. duh
        /// </summary>
        [Required]
        [MaxLength(50)]
        public override string UserName { get; set; }


        /// <summary>
        /// The Email-address to the user.
        /// </summary>
        [Required]
        [EmailAddress]
        [MaxLength(50)]
        public override string Email { get; set; }


        /// <summary>
        /// Password for the user
        /// </summary>
        [Required]
        [PasswordPropertyText]
        [MinLength(3), MaxLength(32)]
        public string Password { get; set; }


        public string Role { get; set; }
    }
}

