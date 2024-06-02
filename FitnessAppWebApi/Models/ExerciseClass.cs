using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Models;

public class ExerciseClass
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Sets { get; set; }
    public int Reps { get; set; }
    public double Weight { get; set; }
    public string MuscleGroup { get; set; }

    public DateTime? DoExercises { get; set; }

}
