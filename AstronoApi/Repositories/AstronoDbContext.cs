using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Repositories.Entities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class AstronoDbContext : IdentityDbContext<User, Roles, string>
    {
        public AstronoDbContext(DbContextOptions<AstronoDbContext> options) : base(options)
        {

        }

        public AstronoDbContext(string connectionStr) : base(new DbContextOptionsBuilder<AstronoDbContext>().UseSqlServer(connectionStr).Options)
        {

        }

        public DbSet<Events> Events { get; set; }
        public DbSet<Translations> Translations { get; set; }
    }
}
