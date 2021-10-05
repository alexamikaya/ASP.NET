using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Final
{
    public class SampleContext : DbContext
    {
        public SampleContext()
        : base("Studentsmark")
        { }
        public DbSet<GuestResponse> GuestResponses { get; set; }
        public DbSet<Mark> Marks { get; set; }
    }
}