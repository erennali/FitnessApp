using System.Net;
using System.Text.RegularExpressions;
using System.Text;

namespace FitnessApp;

public partial class MernisCheckPage : ContentPage
{
	public MernisCheckPage()
	{
		InitializeComponent();
	}

    async void Button_Clicked(System.Object sender, System.EventArgs e)
    {
        string correctTC = "";
        string savedIsim = isim.Text.ToUpper();
        string savedSoyad = soyad.Text.ToUpper();
        string savedTC = tc.Text;
        string patternTC = @"^[1-9]{1}[0-9]{9}[02468]{1}$";
        if (Regex.IsMatch(savedTC, patternTC))
        {
            correctTC = savedTC;
        }
        else
        {
            await DisplayAlert("HATA", "Lütfen geçerli bir kimlik numarasý giriniz", "Tamam");
            return;
        }
        long savedTCLong = long.Parse(correctTC);
        int dogumYili = dtarih.Date.Year;
        string soapMessage = $@"
                <soap:Envelope xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
                    <soap:Body>
                        <TCKimlikNoDogrula xmlns=""http://tckimlik.nvi.gov.tr/WS"">
                            <TCKimlikNo>{savedTCLong}</TCKimlikNo>
                            <Ad>{savedIsim}</Ad>
                            <Soyad>{savedSoyad}</Soyad>
                            <DogumYili>{dogumYili}</DogumYili>
                        </TCKimlikNoDogrula>
                    </soap:Body>
                </soap:Envelope>"
            ;

        // SOAP isteði gönderme
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx");
        request.Headers.Add("SOAPAction", "\"http://tckimlik.nvi.gov.tr/WS/TCKimlikNoDogrula\"");
        request.ContentType = "text/xml;charset=\"utf-8\"";
        request.Accept = "text/xml";
        request.Method = "POST";

        using (Stream stream = request.GetRequestStream())
        {
            byte[] soapBytes = Encoding.UTF8.GetBytes(soapMessage);
            stream.Write(soapBytes, 0, soapBytes.Length);
        }

        using (WebResponse response = request.GetResponse())
        {
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string result = reader.ReadToEnd();
                if (result.Contains("<TCKimlikNoDogrulaResult>true</TCKimlikNoDogrulaResult>"))
                {
                    await DisplayAlert("Baþarýlý", "Mernis üzerinden kimlik doðrulama iþlemi baþarýlý", "Tamam");
                    await Navigation.PushAsync(new RegisterPage());
                }
                else
                {
                    // Doðrulama baþarýsýzsa, hata veya baþka bir iþlem yapabilirsiniz
                    await DisplayAlert("Hata", "Mernis üzerinden kimlik doðrulama iþlemi baþarýsýz", "Tamam");
                }
            }
        }

    }
}