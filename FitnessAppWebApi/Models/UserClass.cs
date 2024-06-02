using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Models;

public class UserClass
{
    public int Id { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string? Bio { get; set; }
    public string Email { get; set; }
    public int? Gender { get; set; }
    public DateTime? Date { get; set; }
    public DateTime CreatedDate { get; set; }
    public DateTime? UpdatedDate { get; set; }

    public DateTime LoginTime { get; set; }= DateTime.Now;



}
