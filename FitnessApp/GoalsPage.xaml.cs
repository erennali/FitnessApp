namespace FitnessApp;

public partial class GoalsPage : ContentPage
{
	public GoalsPage()
	{
		InitializeComponent();

    }
    private void OnBackButton4Clicked(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
    private async void OnGainStrenghtButtonClicked(object sender, EventArgs e)
    {
       await Navigation.PushAsync(new StrenghtPage());

    }
    private async void OnGainMuscleButtonClicked(object sender, EventArgs e)
    {

        await Navigation.PushAsync(new MusclePage());

    }
    private async void OnLoseFatButtonClicked(object sender, EventArgs e)
    {

        await Navigation.PushAsync(new LoseWeightPage());

    }

    private async void ImageButton_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new SettingsPage());
    }
}