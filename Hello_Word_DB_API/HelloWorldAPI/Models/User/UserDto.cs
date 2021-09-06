using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWorldAPI.Models.User
{
    /// <summary>
    /// A model for mapping infromation about an <see cref="User"/> to an XML/Json-file.
    /// </summary>
    public class UserDto
    {
        /// <summary>
        /// The unique Id of a a user (GUID)
        /// </summary>
        public string UserId { get; set; }

        /// <summary>
        /// The username of an <see cref="User"/>
        /// </summary>
        public string UserName { get; set; }
    }
}
