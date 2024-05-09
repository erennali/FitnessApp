using FitnessApp.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.EfCore;

public class FitDbContext : DbContext
{
    public DbSet<UserClass> Users { get; set; }
    public DbSet<ExerciseClass> Exercises { get; set; }

    public DbSet<UserSessionClass> UserSessions{ get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("Server=.;Database=FitnessAppDb;User Id=erennali;Password=123456;TrustServerCertificate=True");
        base.OnConfiguring(optionsBuilder);
    }
}
