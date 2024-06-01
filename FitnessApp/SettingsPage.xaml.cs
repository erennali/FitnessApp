using FitnessApp.EfCore;
using FitnessApp.Models;
using Microsoft.IdentityModel.Tokens;

namespace FitnessApp;

public partial class SettingsPage : ContentPage
{
    public SettingsPage()
    {
        InitializeComponent();
    }
    void OnProfilePageClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new ProfilePage());
    }
    void OnChangePasswordClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new PasswordPage());
    }
    void OnWorkoutPageClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new WorkoutPage());
    }
    void OnAboutUsClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new AboutUsPage());
    }
    void OnLogOutClicked(object sender, EventArgs e)
    {
        Navigation.PushAsync(new LoginPage());

    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        using (var context = new FitnessDbContext())
        {

            var user = context.Users.Where(p => p.Email == txtMetin.Text).FirstOrDefault();
            bool kontrol = txtMetin.Text == null || context.Users.Where(p => p.Email == txtMetin.Text).IsNullOrEmpty(); //1 verir hatada
           
            try
            { 

                if (user != null && kontrol==false)
                {
                    bool kabulEdildi = await DisplayAlert("Onay", "Silme i�lemini onayl�yor musunuz?", "Evet", "Hay�r");
                    if (kabulEdildi)
                    {
                        context.Users.Remove(user);
                        await context.SaveChangesAsync();
                        await DisplayAlert("Ba�ar�", "Kay�t Silme Ba�ar�l�", "Tamam");
                        await Navigation.PushAsync(new MainPage());
                    }

                }
                else
                    await DisplayAlert("Hata", "L�tfen Ge�erli E-Posta yaz�n�z", "Ok");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Hata", "L�tfen E-Posta yaz�n�z", "Ok");
            }






        }
    }

    private void Button_Clicked_1(object sender, EventArgs e)
    {

    }
}