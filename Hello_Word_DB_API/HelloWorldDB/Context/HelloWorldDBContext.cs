using HelloWorldDB.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace HelloWorldDB.Context
{
    public class HelloWorldDBContext : IdentityDbContext
    {
        public HelloWorldDBContext(DbContextOptions<HelloWorldDBContext> options) : base(options)
        {

        }


        DbSet<UserSetting> UserSettings { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
