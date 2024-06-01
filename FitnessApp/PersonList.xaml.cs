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
}