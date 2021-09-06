using HelloWorldDB.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace HelloWorldDB.Context
{
    public class HelloWorldDBContext : IdentityDbContext<User, IdentityRole<string>, string>
    {
        public HelloWorldDBContext(DbContextOptions<HelloWorldDBContext> options) : base(options)
        {

        }


        public DbSet<UserSetting> UserSettings { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            const string ADMIN_ID = "a18be9c0-aa65-4af8-bd17-00bd9344e575";
            const string USER_ID = "a18679c0-kk60-4uty-of17-00324348eder3";

            const string ADMIN_ROLE_ID = "ad376a8f-9eab-4bb9-9fca-30b01540f445";
            const string USER_ROLE_ID = "dt366y8f-78ab-4jh9-18ca-w35hfddffd45";

            modelBuilder.Entity<IdentityRole>().HasData(new IdentityRole
            {
                Id = ADMIN_ROLE_ID,
                Name = "admin",
                NormalizedName = "admin"
            });
            modelBuilder.Entity<IdentityRole>().HasData(new IdentityRole
            {
                Id = USER_ROLE_ID,
                Name = "user",
                NormalizedName = "user"
            });

            modelBuilder.Entity<User>()
            .HasIndex(u => u.Email)
            .IsUnique();

            modelBuilder.Entity<User>()
                .HasIndex(u => u.UserName)
                .IsUnique();

            modelBuilder.Entity<IdentityUserRole<string>>().HasData(new IdentityUserRole<string>
            {
                RoleId = ADMIN_ROLE_ID,
                UserId = ADMIN_ID
            });
            modelBuilder.Entity<IdentityUserRole<string>>().HasData(new IdentityUserRole<string>
            {
                RoleId = USER_ROLE_ID,
                UserId = USER_ID
            });

            var hasher = new PasswordHasher<IdentityUser>();
            modelBuilder.Entity<User>().HasData(new User
            {
                Id = ADMIN_ID,
                Password = "Bas98Pmar",
                UserName = "erik",
                NormalizedUserName = "erik",
                Email = "josander.erik@gmail.com",
                NormalizedEmail = "josander.erik@gmail.com",
                EmailConfirmed = true,
                PasswordHash = hasher.HashPassword(null, "Bas98Pmar"),
                SecurityStamp = string.Empty,
                Role = "admin"
            });
            modelBuilder.Entity<User>().HasData(new User
            {
                Id = USER_ID,
                Password = "123",
                UserName = "alex",
                NormalizedUserName = "alex",
                Email = "johansson.alex@gmail.com",
                NormalizedEmail = "johansson.alex@gmail.com",
                EmailConfirmed = true,
                PasswordHash = hasher.HashPassword(null, "123"),
                SecurityStamp = string.Empty,
                Role = "user"
            });


            base.OnModelCreating(modelBuilder);
        }
    }
}
