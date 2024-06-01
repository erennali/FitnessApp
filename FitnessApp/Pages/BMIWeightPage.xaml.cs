using Microsoft.Maui;
using System;

namespace FitnessApp
{
    public partial class BMIWeightPage : ContentPage
    {
        private double _height;
        private double _weight;

        public BMIWeightPage(double height)
        {
            InitializeComponent();
            _height = height;
        }
        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SettingsPage());
        }

        private void OnValueChanged(object sender, ValueChangedEventArgs e)
        {
            _weight = e.NewValue;
            WeightLabel.Text = string.Format("{0:F0} kg", _weight);
            NextButton.IsEnabled = true;
        }

        private async void OnNextButtonClicked(object sender, EventArgs e)
        {
            var bmiPage = new BMIResultPage(_height, _weight);
            await Navigation.PushAsync(bmiPage);
        }
        private void OnBackButtonClicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }
    }
}