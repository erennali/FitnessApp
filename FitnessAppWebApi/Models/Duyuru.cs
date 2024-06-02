namespace FitnessAppWebApi.Models
{
    public class Duyuru
    {
        public int Id { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public string ImageUrl { get; set; }
        public DateTime Tarih { get; set; }

        public int Tip { get; set; }
    }
}
