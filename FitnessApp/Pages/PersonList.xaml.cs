using FitnessApp.EfCore;

namespace FitnessApp;

public partial class PersonList : ContentPage
{
	public PersonList()
	{
		InitializeComponent();
        LoadData();
    }

    private void LoadData()
    {

        using (var context = new FitnessDbContext())
        {
            var veriler = context.Users.ToList();
            MyCollectionView.ItemsSource = veriler;
        }
    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginPage());
    }
}