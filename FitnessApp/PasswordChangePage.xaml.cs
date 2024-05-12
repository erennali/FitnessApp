using FitnessApp.EfCore;

namespace FitnessApp;

public partial class PasswordChangePage : ContentPage
{
    private string _email;

    public PasswordChangePage(string Eposta2)
	{
     
    InitializeComponent();
        _email = Eposta2;
	}
    private async void OnBackButton62Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PasswordPage());
    }
    private async void OnBackButton63Clicked(object sender, EventArgs e)
    {
        FitnessDbContext context = new FitnessDbContext();
        var person = context.Users.Where(x => x.Email == _email).FirstOrDefault();
        if (person != null)
        {
            
            if (person.Password != PasswordChangeEntry.Text) {
                person.Password = PasswordChangeEntry.Text;
                context.SaveChanges();
            await DisplayAlert("Baþarý", "Þifre Deðiþtirildi", "Tamam");
            await Navigation.PushAsync(new LoginPage()); 
            }
            else
                await DisplayAlert("Hata", " Eski Þifre Ýle Yeni Þifre Ayný Olamaz", "Tamam");



        }

        //await Navigation.PushAsync(new PasswordPage());
    }
}