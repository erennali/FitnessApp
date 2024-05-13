using FitnessApp.EfCore;
using FitnessApp.Models;
using FitnessAppWebApi.EfCore;
using Microsoft.EntityFrameworkCore;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace FitnessApp;

public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }
    private async void TapGestureRecognizer_Tapped_For_SignUp(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegisterPage());
    }
    private async void LoginButton_Clicked(object sender, EventArgs e)
    {
        if (EmailEntry.Text  != null && PasswordEntry.Text != null)
        { 
            try
        {
            FitnessDbContext context = new FitnessDbContext();
            var query = context.Users.Where(u => u.Email == EmailEntry.Text);
            var user = await query.FirstOrDefaultAsync();
            if (user != null && user.Password == PasswordEntry.Text)
            {
                UserCred.Email = user.Email;
                UserSessionClass.Username = user.Email;
                await Navigation.PushAsync(new BMIHeightPage());
            }
            else
            {
                await DisplayAlert("Hata", "Geçersiz E-Posta veya Þifre", "Tamam");
            }
        }
            catch (Exception ex)
        {
            await DisplayAlert("Hata", ex.Message, "Tamam");
        }
        }
        else
            await DisplayAlert("Hata","Boþ Alanlarý Doldurunuz!", "Tamam");

        //await Navigation.PushAsync(new BMIHeightPage());

    }
    private async void OnImageButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MainPage());
    }
    private async void OnPasswordButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PasswordPage()); //þifremi unuttum sayfasý oluþtur
    }
    }