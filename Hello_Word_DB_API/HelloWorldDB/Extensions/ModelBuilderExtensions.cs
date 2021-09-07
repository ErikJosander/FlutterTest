using HelloWorldDB.Entities;
using Microsoft.EntityFrameworkCore;

namespace HelloWorldDB.Extensions
{
    public static class ModelBuilderExtensions
    {
        public static void CreateDevSeedData(this ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().HasData(new User
            {
                Id = 1,
                UserName = "Erik",
                Email = "josander.erik@gmail.com",
                PassWord = "Bas98Pmar"
            });

            modelBuilder.Entity<User>().HasData(new User
            {
                Id = 2,
                UserName = "Alex",
                Email = "Alex@gmail.com",
                PassWord = "alex"
            });


        }
    }
}
