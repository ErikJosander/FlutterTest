using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace HelloWorldDB.Entities
{
    public class UserSetting
    {
        public int Id { get; set; }

        public ICollection<Link> Links { get; set; }

        [ForeignKey("User")]
        public string UserId { get; set; }
        public User User { get; set; } 
    }
}
