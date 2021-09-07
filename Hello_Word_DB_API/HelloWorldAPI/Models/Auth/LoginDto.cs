using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWorldAPI.Models
{
    /// <summary>
    /// A model for the login proccess
    /// </summary>
    public class LoginDto
    {
        /// <summary>
        /// The <see cref="User.UserName"/> as a string.
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// The <see cref="User.Password"/> as a string.
        /// </summary>
        public string Password { get; set; }
    }
}
