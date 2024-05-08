using FitnessApp.EfCore;
using FitnessApp.Models;
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
        //await Navigation.PushAsync(new RegisterPage());
    }
    private async void LoginButton_Clicked(object sender, EventArgs e)
    {
        //try
        //{
        //    var query = _connection.Table<User>().Where(u => u.Email == EmailEntry.Text);
        //    var user = await query.FirstOrDefaultAsync();
        //    if (user != null && user.Password == PasswordEntry.Text)
        //    {
        //        UserCred.Email = user.Email;
        //        UserSession.Username = user.Email;
        //        await Navigation.PushAsync(new BMIHeightPage());
        //    }
        //    else
        //    {
        //        await DisplayAlert("Hata", "Geçersiz E-Posta veya Þifre", "Tamam");
        //    }
        //}
        //catch (Exception ex)
        //{
        //    await DisplayAlert("Hata", ex.Message, "Tamam");
        //}
    }
    private async void OnImageButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MainPage());
    }
    }