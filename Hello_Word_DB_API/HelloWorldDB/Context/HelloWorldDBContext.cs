using HelloWorldDB.Entities;
using HelloWorldDB.Extensions;
using Microsoft.EntityFrameworkCore;

namespace HelloWorldDB.Context
{
    public class HelloWorldDBContext : DbContext
    {
        public HelloWorldDBContext(DbContextOptions<HelloWorldDBContext> options) : base(options)
        {

        }

        public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Provides all seed data
            modelBuilder.CreateDevSeedData();

            base.OnModelCreating(modelBuilder);
        }
    }
}
