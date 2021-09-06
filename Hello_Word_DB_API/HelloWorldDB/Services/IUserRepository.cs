using HelloWorldDB.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HelloWorldDB.Services
{
    public interface IUserRepository : IRepository<User>
    {
        Task<IEnumerable<User>> GetAllAsync(string userName);
        User GetFromUserName(string userName);
    }
}
