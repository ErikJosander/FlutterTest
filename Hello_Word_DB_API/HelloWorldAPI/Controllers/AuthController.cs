using HelloWorldAPI.Models;
using HelloWorldAPI.Models.Auth;
using HelloWorldDB.Entities;
using HelloWorldDB.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Text;


namespace HelloWorldAPI.Controllers
{
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IUserRepository _userRepository;
        private readonly IConfiguration _configuration;

        public AuthController(
            IUserRepository userRepository,
            IConfiguration configuration
            )
        {
            _userRepository = userRepository;
            _configuration = configuration;
        }


        [HttpPost]
        [Route("api/login")]
        [Consumes("application/x-www-form-urlencoded")]
        public IActionResult Login([FromForm] IFormCollection value)
        {
            var model = new LoginDto();
            model.UserName = value["UserName"];
            model.Password = value["Password"];

            if (_userRepository.CheckForPassWord(model.UserName, model.Password))
            {
                var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Secret"]));
                var date = DateTime.Now.ToString();


                var token = new JwtSecurityToken(
                    issuer: _configuration["JWT:ValidIssuer"],
                    audience: _configuration["JWT:ValidAudience"],
                    expires: DateTime.UtcNow.AddMinutes(40),

                    signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                    );

                TimeSpan ts = token.ValidTo - DateTimeOffset.UtcNow;
                return Ok(new
                {
                    access_token = new JwtSecurityTokenHandler().WriteToken(token),
                    token_type = "bearer",
                    expires_in = ts.TotalSeconds,
                    userName = model.UserName,
                    issued = DateTimeOffset.UtcNow,
                    expiration = token.ValidTo
                });
            }
            return Unauthorized("Unauthorized");
        }


        [HttpPost]
        [Route("api/register")]
        [Consumes("application/x-www-form-urlencoded")]
        public IActionResult Register([FromForm] IFormCollection value)
        {
            var model = new UserForCreationDto();
            model.UserName = value["UserName"];
            model.Email = value["Email"];
            model.Password = value["Password"];
            model.ConfirmPassword = value["ConfirmPassword"];

            //var fromRepo = _userRepository.GetFromUserName(model.UserName);
            //if (fromRepo is not null)
            //{
            //    return StatusCode(StatusCodes.Status500InternalServerError,
            //        new Response { Status = "Error", Message = "User creation failed! Please check user details and try again." });
            //}

            //if (_userRepository.CheckForEmail(model.Password))
            //{
            //    return StatusCode(StatusCodes.Status500InternalServerError,
            //        new Response { Status = "Error", Message = "User creation failed! Please check user details and try again." });
            //}

            User user = new User()
            {
                Email = model.Email,
                UserName = model.UserName,
                PassWord = model.Password,
            };

            _userRepository.Add(user);
            _userRepository.Save();


            return Ok(new Response { Status = "Success", Message = "User created successfully!" });
        }
    }
}
