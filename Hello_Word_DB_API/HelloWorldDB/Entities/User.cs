using System.Collections;
using System.Collections.Generic;

namespace HelloWorldDB.Entities
{
    public class User 
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string PassWord { get; set; }
        public string Email { get; set; }

        public virtual ICollection<Link> Links { get; set; } = new List<Link>();
    }
}
