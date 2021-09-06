using System.Net;

namespace Flutter_Hello_World_DB.Entities
{
    public class LinksInPage
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public HttpWebRequest httpWebRequest { get; set; }
    }
}
