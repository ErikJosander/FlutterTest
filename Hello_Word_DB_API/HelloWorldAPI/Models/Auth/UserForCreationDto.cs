﻿using System.ComponentModel.DataAnnotations;

namespace HelloWorldAPI.Models.Auth
{
    public class UserForCreationDto
    {
        /// <summary>
        /// The <see cref="User.UserName"/>
        /// </summary>
        [Required]
        [MaxLength(50)]
        public string UserName { get; set; }

        /// <summary>
        /// The <see cref="User.Email"/> of the <see cref="User"/>
        /// </summary>
        [Required]
        [EmailAddress]
        [MaxLength(50)]
        public string Email { get; set; }

        /// <summary>
        /// The <see cref="User.Password"/> of the <see cref="User"/>.
        /// </summary>
        [Required]
        [MinLength(3), MaxLength(32)]
        public string Password { get; set; }

        /// <summary>
        /// Confirmatio  of the <see cref="Password"/>.
        /// </summary>
        [Required]
        [MinLength(3), MaxLength(32)]
        public string ConfirmPassword { get; set; }
    }
}
