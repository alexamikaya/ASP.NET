using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


namespace Final
{
    public class GuestResponse
    {
        public int GuestResponseId { get; set; }
 public string StudentName { get; set; }
        public string StudentEmail { get; set; }
        public string StudentPhone { get; set; }
        public string StudentRussia { get; set; }
        public string StudentMath { get; set; }
        public string StudentChem { get; set; }
        public DateTime Rdata { get; set; }
        public virtual List<Mark> Marks { get; set; }
        public GuestResponse() { }
        public GuestResponse(string name, string email, string phone, string russia, string math, string chem)
        {
            StudentName = name;
            StudentEmail = email;
            StudentPhone = phone;
            StudentRussia = russia;
            StudentMath = math;
            StudentChem = chem;
            Rdata = DateTime.Now;

            Marks = new List<Mark>();
        }

    }
}