using HelloWorldDB.Context;
using HelloWorldDB.Entities;
using HelloWorldDB.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWorldDB.Repositories
{
    public class UserRepository : Repository<User>, IUserRepository
    {
        private readonly HelloWorldDBContext _context;
        // Constructor
        public UserRepository(HelloWorldDBContext context)
            : base(context)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
        }
        public bool CheckForPassWord(string username, string password)
        {
            var userFromRepo = _context.Users.Where(u => u.UserName == username).FirstOrDefault();
            if (userFromRepo is null) return false;
            if (userFromRepo.PassWord != password) return false;
            return true; 
        }
        public async Task<IEnumerable<User>> GetAllAsync(string userName)
        {
            if (string.IsNullOrWhiteSpace(userName))
            {
                return await GetAllAsync();
            }

            var collection = _context.Users as IQueryable<User>;

            if (!string.IsNullOrWhiteSpace(userName))
            {
                userName = userName.Trim();
                collection = collection.Where(a => a.UserName.Contains(userName));
            }
            return collection.ToList();
        }
        public User GetFromUserName(string userName)
        {
            return _context.Users.Where(u => u.UserName == userName).FirstOrDefault();
        }
        public bool CheckForEmail(string email)
        {
            if(_context.Users.Any(u => u.Email == email))
            {
                return false;
            }
            return true;
        }
    }
}
