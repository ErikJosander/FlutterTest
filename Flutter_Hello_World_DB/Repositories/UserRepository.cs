using Flutter_Hello_World_DB.Context;
using Flutter_Hello_World_DB.Entities;
using Flutter_Hello_World_DB.Services;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Flutter_Hello_World_DB.Repositories
{
    public class UserRepository : Repository<User>, IUserRepository
    {
        private readonly HelloFlutterDBContext _context;

        // Constructor
        public UserRepository(HelloFlutterDBContext context)
            : base(context)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
        }

        public Task<IEnumerable<User>> GetAllAsync(string userName)
        {
            throw new NotImplementedException();
        }

        public User GetFromUserName(string userName)
        {
            throw new NotImplementedException();
        }
    }
}
