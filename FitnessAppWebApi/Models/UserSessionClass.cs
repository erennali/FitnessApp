using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Models;

public class UserSessionClass
{
    public int Id { get; set; }
    public string Email { get; set; }

    public static string Username { get; set; }
    public string Password { get; set; }
}
