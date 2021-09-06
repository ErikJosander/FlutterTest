using Flutter_Hello_World_DB.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Flutter_Hello_World_DB.Services
{
    public interface IUserRepository : IRepository<User>
    {
        Task<IEnumerable<User>> GetAllAsync(string userName);
        User GetFromUserName(string userName);
    }
}
