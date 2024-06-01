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
                await DisplayAlert("Baþarý", "Kayýt Baþarýlý", "Tamam");
                await Navigation.PushAsync(new LoginPage());
            }
            else
                await DisplayAlert("Hata", "Lütfen Onay Kutucuðunu Onaylayýnýz", "Ok");

        }
        catch (Exception ex)
        {
            await DisplayAlert("Hata", "Boþ alanlarý lütfen doldurun!", "Tamam");
        }
    }
}