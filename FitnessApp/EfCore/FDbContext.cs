using FitnessApp.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.EfCore
{
    public class FDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Exercise> exercise { get; set; }
        public DbSet<UserSession> UserSessions { get; set; }
        public DbSet<BioModel> Bios { get; set; }
        public DbSet<ExerciseModel> Exercises { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=.;Database=FitnessApp;User Id=erennali;Password=123456;TrustServerCertificate=True");
        }
        public class Database
        {
            public async Task SaveBioAsync(string bio)
            {
                using (var context = new FDbContext())
                {
                    var bioModel = new BioModel { Bio = bio };
                    context.Bios.Add(bioModel);
                    await context.SaveChangesAsync();
                }
            }

            public async Task SaveExerciseAsync(string exercise)
            {
                using (var context = new FDbContext())
                {
                    var exerciseModel = new ExerciseModel { Exercise = exercise };
                    context.Exercises.Add(exerciseModel);
                    await context.SaveChangesAsync();
                }
            }
        }

        public class BioModel
        {
            public int Id { get; set; }
            public string Bio { get; set; }
        }

        public class ExerciseModel
        {
            public int Id { get; set; }
            public string Exercise { get; set; }
        }
    }
    
}


