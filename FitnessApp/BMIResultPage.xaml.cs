using System;

namespace FitnessApp
{
    public partial class BMIResultPage : ContentPage
    {
        private double _height;
        private double _weight;
        private double _bmi;
        private string _classification;

        public BMIResultPage(double height, double weight)
        {
            InitializeComponent();
            _height = height;
            _weight = weight;
            CalculateBmi();
        }
        private void OnBackButtonClicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();

        }

        private void OnNextButtonClicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new GoalsPage());
        }


        public static double BmiValue { get; set; }

        private void CalculateBmi()
        {
            if (_height > 0 && _weight > 0)
            {
                _bmi = Math.Round(_weight / (_height / 100 * _height / 100), 2);
                BmiValueLabel.Text = _bmi.ToString();
                BmiValue = _bmi; 
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
                else if (_bmi >= 30)
                {
                    _classification = "Obezite! Kardiyo ve egzersizlere odaklan, daha az ye";
                }
                ClassificationLabel.Text = _classification;
            }
        }

    }
}
