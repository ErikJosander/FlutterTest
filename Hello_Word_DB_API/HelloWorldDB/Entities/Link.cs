using System.ComponentModel.DataAnnotations.Schema;

namespace HelloWorldDB.Entities
{
    public class Link
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }


        [ForeignKey("UserSetting")]
        public int UserSettingId { get; set; }
        public UserSetting UserSetting { get; set; }
    }
}
