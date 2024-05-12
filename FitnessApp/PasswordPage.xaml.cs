using FitnessApp.EfCore;
using FitnessApp.Models;
using FitnessAppWebApi.EfCore;
using Microsoft.EntityFrameworkCore;

namespace FitnessApp;

public partial class PasswordPage : ContentPage
{
	public PasswordPage()
	{
		InitializeComponent();
	}
    private async void OnBackButton31Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginPage());
    }
    private async void OnBackButton32Clicked(object sender, EventArgs e)
    {
        try
        {
            FitnessDbContext context = new FitnessDbContext();
            var query = context.Users.Where(u => u.Email == EmailEntry.Text);
            var user = await query.FirstOrDefaultAsync();
            if (user != null && user.Username == UsernameEntry.Text)
            {
               
                UserCred.Email = user.Email;
                string Eposta2 = user.Email;
                UserSessionClass.Username = user.Email;
                await Navigation.PushAsync(new PasswordChangePage(Eposta2));
            }
            else
            {
                await DisplayAlert("Hata", "Geçersiz E-Posta ve/veya Kullanýcý Adý", "Tamam");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Hata", ex.Message, "Tamam");
        }
    }

    private void DatePicker_DateSelected(object sender, DateChangedEventArgs e)
    {

    }
}