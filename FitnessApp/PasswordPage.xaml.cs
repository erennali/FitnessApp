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
        if(true)//db den kontrol sa�la ve bunu yaz
        await Navigation.PushAsync(new PasswordChangePage());
        else
            await Console.Out.WriteLineAsync("hata");//hata mesaj� verdirsin ekrana bilgiler yanl�� diye
    }
}