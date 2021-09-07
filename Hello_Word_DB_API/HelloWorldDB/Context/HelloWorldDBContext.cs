using HelloWorldDB.Entities;
using HelloWorldDB.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;

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
            modelBuilder.Entity<Link>()
                .HasOne(p => p.User)
                .WithMany(b => b.Links);


            // Provides all seed data
            modelBuilder.CreateDevSeedData();

            base.OnModelCreating(modelBuilder);
        }
    }
}
