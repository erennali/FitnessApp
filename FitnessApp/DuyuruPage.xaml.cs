using FitnessApp.Abstract.Services;
using FitnessAppWebApi.Models;
using System.Collections.ObjectModel;

namespace FitnessApp;

public partial class DuyuruPage : ContentPage
{
    IDuyuruService duyuruService;

    int pageItemCount = 20;
    ObservableCollection<Duyuru> duyurular = new ObservableCollection<Duyuru>();

    public DuyuruPage()
    {
        InitializeComponent();
        duyuruService = new DuyuruService();

    }

    private void OnCounterClicked(object sender, EventArgs e)
    {

    }

    private void ContentPage_Loaded(object sender, EventArgs e)
    {
        var duyurular = duyuruService.GetTumDuyurular();
        var sonuc = duyuruService.GetTumDuyurular(pageItemCount, 0);
        foreach (var duyuru in sonuc)
        {
            duyurular.Add(duyuru);
        }

        collectionViewDuyuru.ItemsSource = duyurular;
    }

    private void collectionViewDuyuru_RemainingItemsThresholdReached(object sender, EventArgs e)
    {
        var yeniDuyurular = duyuruService.GetTumDuyurular(pageItemCount, duyurular.Count);

        foreach (var duyuru in yeniDuyurular)
        {
            duyurular.Add(duyuru);
        }

        collectionViewDuyuru.ItemsSource = duyurular;
    }
}

