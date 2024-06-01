using FitnessApp.EfCore;
using FitnessApp.Models;
using FitnessAppWebApi.EfCore;
using Microsoft.EntityFrameworkCore;
using System;

namespace FitnessApp;

public partial class RegisterPage : ContentPage
{
    private DateTime selectedDate;
    public RegisterPage()
    {
        InitializeComponent();
        DateEntry.DateSelected += MyDateEntry_DateSelected;
    }

    private void MyDateEntry_DateSelected(object sender, DateChangedEventArgs e)
    {
         selectedDate = e.NewDate;
        
    }
    private async void OnBackButton6Clicked(object sender, EventArgs e)
    {

        await Navigation.PushAsync(new LoginPage());
    }

    private async void SignUpButton_Clicked(object sender, EventArgs e)
    {
        DateOnly dateOnly = DateOnly.FromDateTime(selectedDate);
        try
        {
            FitnessDbContext context = new FitnessDbContext();
            if (checkBoxEtkinlik.IsChecked)
            {
                var person = new UserClass { Username = UsernameEntry.Text, Password = PasswordEntry.Text, Email = EmailEntry.Text, Gender = PickerEntry.SelectedIndex ,CreatedDate=DateTime.Now,Date=selectedDate};
                context.Users.Add(person);
                context.SaveChanges();
                await DisplayAlert("Ba�ar�", "Kay�t Ba�ar�l�", "Tamam");
                await Navigation.PushAsync(new LoginPage());
            }
            else
                await DisplayAlert("Hata", "L�tfen Onay Kutucu�unu Onaylay�n�z", "Ok");

        }
        catch (Exception ex)
        {
            await DisplayAlert("Hata", "Bo� alanlar� l�tfen doldurun!", "Tamam");
        }
    }
}