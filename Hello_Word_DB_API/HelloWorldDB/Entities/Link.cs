using System.ComponentModel.DataAnnotations.Schema;

namespace HelloWorldDB.Entities
{
    public class Link
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public string  Name { get; set; }



        [ForeignKey("User")]
        public int UserId { get; set; }
        public virtual User User { get; set; }
    }
}
