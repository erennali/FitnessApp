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
    
}