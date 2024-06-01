using FitnessApp.EfCore;
using FitnessApp.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.ViewModels;

public class UsersViewModel
{

    public ObservableCollection<UserClass> Users { get; set; }

    public UsersViewModel()
    {
        using (var context = new FitnessDbContext())
        {
            Users = new ObservableCollection<UserClass>(context.Users.ToList());
        }
    }
}




