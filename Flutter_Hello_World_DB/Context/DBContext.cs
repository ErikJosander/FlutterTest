using Flutter_Hello_World_DB.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;

namespace Flutter_Hello_World_DB.Context
{
    public class DBContext : IdentityDbContext<User>
    {
        public DBContext(DbContextOptions<DbContext> options)
        {

        }

        
    }
}
