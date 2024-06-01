using FitnessApp.Exercises;

namespace FitnessApp;

public partial class StrenghtPage : ContentPage
{
	public StrenghtPage()
	{
		InitializeComponent();
	}
    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ArmsPage());
    }

    private async void Button_Clicked_1(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new BackPage());
    }

    private async void Button_Clicked_2(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ChestPage());
    }

    private async void Button_Clicked_3(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new GlutesPage());
    }

    private async void Button_Clicked_4(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new HamstringsPage());
    }

    private async void Button_Clicked_5(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LegsPage());
    }

    private async void Button_Clicked_6(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new QuadsPage());
    }

    private async void Button_Clicked_7(object sender, EventArgs e)
    {
        await  Navigation.PushAsync(new ShouldersPage());
    }
}