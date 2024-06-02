namespace FitnessApp
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
        }

        private Microsoft.UI.Windowing.AppWindow GetAppWindow(MauiWinUIWindow window)
        {
            var handle = WinRT.Interop.WindowNative.GetWindowHandle(window);
            var id = Microsoft.UI.Win32Interop.GetWindowIdFromWindow(handle);
            var appWindow = Microsoft.UI.Windowing.AppWindow.GetFromWindowId(id);
            return appWindow;
        }
        // Butona tıklandığında çağrılacak olay işleyicisi
        private async void OnNavigateButtonClicked(object sender, EventArgs e)
        {
            // Diğer sayfaya geçiş yap
            await Navigation.PushAsync(new LoginPage());
        }

        private void ContentPage_Loaded(object sender, EventArgs e)
        {
            var window = GetParentWindow().Handler.PlatformView as MauiWinUIWindow;
            var appWindow = GetAppWindow(window);

            switch(appWindow.Presenter)
            {
                case Microsoft.UI.Windowing.OverlappedPresenter ovp:
                    {
                        ovp.IsMaximizable = true;
                        ovp.Maximize();
                        break;
                    }
            }
        }

        private async void NavigateButtSn2_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new DuyuruPage());
        }
    }

}


