using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Models
{
    [Table("usersession")]
    public class UserSession
    {
        public static string Email { get; set; }
        public static string Username { get; set; }
        public static string Password { get; set; }
        
    }
}
