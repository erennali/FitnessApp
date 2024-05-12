using FitnessApp.EfCore;
using FitnessApp.Models;
using FitnessAppWebApi.EfCore;
using Microsoft.EntityFrameworkCore;

namespace FitnessApp;

public partial class RegisterPage : ContentPage
{
	public RegisterPage()
	{
		InitializeComponent();
	}
    private async void OnBackButton6Clicked(object sender, EventArgs e)
    {

        await Navigation.PushAsync(new LoginPage());
    }

    private async void SignUpButton_Clicked(object sender, EventArgs e)
    {
        try
        {
            FitnessDbContext context = new FitnessDbContext();
            var person = new UserClass { Username=UsernameEntry.Text,Password=PasswordEntry.Text,Email=EmailEntry.Text,Gender= PickerEntry.SelectedIndex };
            context.Users.Add(person);
            context.SaveChanges();
            await DisplayAlert("Baþarý","Kayýt Baþarýlý", "Tamam");
            await Navigation.PushAsync(new LoginPage());
        }
        catch (Exception ex)
        {
            await DisplayAlert("Hata", "Boþ alanlarý lütfen doldurun!", "Tamam");
        }
    }
}