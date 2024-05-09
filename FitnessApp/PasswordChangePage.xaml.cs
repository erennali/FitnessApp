namespace FitnessApp;

public partial class PasswordChangePage : ContentPage
{
	public PasswordChangePage()
	{
		InitializeComponent();
	}
    private async void OnBackButton62Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PasswordPage());
    }
}