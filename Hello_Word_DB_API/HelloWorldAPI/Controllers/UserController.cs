using AutoMapper;
using HelloWorldAPI.Models.User;
using HelloWorldDB.Entities;
using HelloWorldDB.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HelloWorldAPI.Controllers
{
    [ApiController]
    [Route("api/users")]
    public class UserController : ControllerBase
    {
        private readonly IUserRepository _userRepository;
        private readonly IMapper _mapper;

        public UserController(IUserRepository userRepository, IMapper mapper)
        {
            _userRepository = userRepository ?? throw new ArgumentNullException(nameof(userRepository));
            _mapper = mapper;
        }

        /// <summary>
        /// This GET methode returns a list of <see cref="UserDto"/>
        /// <br></br>mapped from the <see cref="User"/>
        /// </summary>
        /// <param name="userName"></param>
        /// <returns><see cref="OkResult"/> and a <see cref="List{T}"/> of <see cref="UserDto"/></returns>
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserDto>>> GetUsersAsync(string userName)
        {
            var usersFromRepo = await _userRepository.GetAllAsync(userName);
            List<UserDto> userList = new List<UserDto>();
            foreach (User user in usersFromRepo)
            {
                var userDto = (_mapper.Map<UserDto>(user));
                userList.Add(userDto);
            }
            return Ok(userList);
        }
    }
}
