namespace FitnessApp
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
        }

        // Butona tıklandığında çağrılacak olay işleyicisi
        private async void OnNavigateButtonClicked(object sender, EventArgs e)
        {
            // Diğer sayfaya geçiş yap
            await Navigation.PushAsync(new LoginPage());
        }
    }

}


