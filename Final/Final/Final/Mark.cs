using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final
{
    public class Mark
    {
        public int Id { get; set; }
        public int Russia1 { get; set; }
        public int Math1 { get; set; }
        public GuestResponse GuestRes { get; set; }
        public Mark() { }
        public Mark(int russia1, int math1)
        {
            Russia1 = russia1;
            Math1 = math1;
        }
    }
}