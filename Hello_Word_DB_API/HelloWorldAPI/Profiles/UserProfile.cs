using AutoMapper;
using HelloWorldAPI.Models.User;
using HelloWorldDB.Entities;

namespace HelloWorldAPI.Profiles
{
    public class UserProfile : Profile
    {
        public UserProfile()
        {
            // Pass in source ad destination type (Obejct to Object)
            CreateMap<User, UserDto>()
                .ForMember(
                dest => dest.UserId,
                opt => opt.MapFrom(src => src.Id));
        }
    }
}
