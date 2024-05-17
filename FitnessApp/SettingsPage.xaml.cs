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
}