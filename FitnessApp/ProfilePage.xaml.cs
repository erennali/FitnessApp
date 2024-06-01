
using System.IO;
using System.Threading.Tasks;
using FitnessApp.EfCore;
using FitnessAppWebApi.EfCore;
using FitnessApp.Models;
using FitnessApp.ViewModels;
using Microsoft.Maui;


namespace FitnessApp
{
    public partial class ProfilePage : ContentPage
    {
        private double height = 0;
        private double weight = 0;
        private double _bmi;
        private string _classification;

        FitnessDbContext context = new FitnessDbContext();
        public ProfilePage()
        {
            InitializeComponent();
           EmailLabel.Text = UserSessionClass.Email;
           UsernameLabel.Text = UserSessionClass.Username;
            SaveBioButton.Clicked += SaveBioButton_Clicked;
            OnAppearing();
        }

        private void SaveBioButton_Clicked(object sender, EventArgs e)
        {
            string bio = BioEntry.Text;

            var person = context.Users.FirstOrDefault();
            if (person != null)
            { 
                person.Bio = BioEntry.Text;
                context.SaveChanges();
            }
             DisplayAlert("Baþarýlý", "Bio güncellendi!", "OK");
        }


        private void OnValueChanged(object sender, ValueChangedEventArgs e)
        {
            height = e.NewValue;
            HeightLabel.Text = string.Format("{0:F0} cm", height);
            UpdateBmi();
        }

        private void OnValue2Changed(object sender, ValueChangedEventArgs e)
        {
            weight = e.NewValue;
            WeightLabel.Text = string.Format("{0:F0} kg", weight);
            UpdateBmi();
        }
        private void OnAppearing()
        {
            BmiValueLabel.Text = BMIResultPage.BmiValue.ToString();
        }


        private void UpdateBmi()
        {
            _bmi = Math.Round(weight / (height / 100 * height / 100), 2);
            BmiValueLabel.Text = _bmi.ToString();
            if (_bmi < 18.5)
            {
                _classification = "Düþük kilolusunuz, daha fazla yemeye odaklanýn";
            }
            else if (_bmi >= 18.5 && _bmi <= 24.9)
            {
                _classification = "Normal kilodasýn, gayet iyi gidiyorsun.";
            }
            else if (_bmi >= 25 && _bmi <= 29.9)
            {
                _classification = "Aþýrý kiloluysanýz, daha fazla kardiyo egzersizi yapmaya çalýþmalýsýnýz";
            }
            else
            {
                _classification = "Obezite! Kardiyo ve egzersizlere odaklan, daha az ye";
            }
            ClassificationLabel.Text = _classification;
        }
    }
}
