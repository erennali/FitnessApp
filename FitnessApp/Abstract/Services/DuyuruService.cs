using FitnessAppWebApi.Models;

namespace FitnessApp.Abstract.Services
{
    internal class DuyuruService : IDuyuruService
    {
        public List<Duyuru> GetTumDuyurular()
        {
            List<Duyuru> result = GetDuyurular();

            return result.OrderBy(x => Guid.NewGuid()).ToList();
        }

        private List<Duyuru> GetDuyurular()
        {
            return new List<Duyuru>()
            {
                new Duyuru()
                {
                    Id = 1,
                    Baslik = "Supplement Nedir? Ne İşe Yarar?",
                    Icerik = "Supplementler, sporcu besinleri, besindir. Besin ne kadar faydalı olursa, supplement de o kadar faydalı olabilir.Supplementler sadece ihtiyacımız olan gıdalar izole edilerek sunulduğu için kullanım kolaylığı oluştururlar. Yerleri, zamanları vardır. Fakat inanılmaz farklar oluşturmazlar. Antrenman yapmadan, düzgün beslenmeden bu ürünleri kullanmak takımı giymeden papyon takmaya benzer.Unutmayın! En iyi supplement antrenmandır, spor yapmaktır, iyi beslenmektir!",
                    Tarih = new DateTime(2024,05,01),
                    ImageUrl = "https://w7.pngwing.com/pngs/13/1024/png-transparent-dietary-supplement-whey-protein-isolate-bodybuilding-supplement-nutrition-powder-miscellaneous-food-nutrition-thumbnail.png",
                    Tip = 1
                },
                new Duyuru()
                {
                    Id = 2,
                    Baslik = "En İyi Supplementler!",
                    Icerik = "1-Kreatin , 2-ZMA , 3- Omega-3 , 4- BCAA ",
                    Tarih = new DateTime(2024,05,05),
                    ImageUrl = "https://w7.pngwing.com/pngs/466/610/png-transparent-dietary-supplement-creatine-whey-protein-nutrition-bodybuilding-supplement-nutrition-nutrition-whey-dietary-supplement-thumbnail.png",
                    Tip = 1
                },
                new Duyuru()
                {
                    Id = 3,
                    Baslik = "Protein Tozu Zararlı Mı? ",
                    Icerik = "Protein tozu milyonların sofrasındaki ekmekten daha sağlıklıdır. Fakat sütten üretildiği için, derinlemesine incelendiğinde süte bağlı problemleri, birçok protein tozu da taşır. Yani süt içmesi zararlı olan kişi için, protein tozu da sütten üretildiği için zararlıdır.\r\n\r\nSüt kimi insanlarda alerjiye, sivilceye ve gaz & şişkinlik gibi problemlere neden olabilir. Laktoz alerjisi olanlar izole whey tercih edebilirler.\r\n\r\nProtein tozları veya protein böbreklere zarar vermez. Fakat böbreklerinde problemleri olan insanların dikkatli protein tüketmesi, dolayısıyla dikkatli protein tozu tüketmesi gerekir. Genel olarak protein tüketmek vücudun pH dengesini asidik yapacağından dolayı, bol su içmek kas geliştirmek isteyen insanlar için faydalı olacaktır.\r\n\r\nProtein tozu hakkında kalp krizlerinden, yapay kaslardan, sarkan kas oluşturmalardan tutun da; çok hızlı kas yapmalara, anormal büyümelere kadar hurafeler dizilmektedir. Fakat ürünün fayda ve zarar durumları özetlendiği gibidir, sanıldığı kadar aksiyonlu bir supplement değildir.\r\n\r\nPeynirdir işte yahu! ",
                    Tarih = new DateTime(2024,05,09),
                    ImageUrl = "https://www.hardlinenutrition.com/image/cache/catalog/proteinler/HIPRO%20/Hipro%20908%20Plainv-500x500.png",
                    Tip = 1

                },
                new Duyuru()
                {
                    Id = 4,
                    Baslik = "Karbonhidrat Hakkında Bilmeniz Gerekenler!",
                    Icerik = "Karbonhidrat, genelde en fazla tüketilen ve enerji olarak vücudumuz tarafından en hızlı ve kolay kullanılabilen makro besindir. Çoğu bireyin günlük aldığı enerjinin yaklaşık yarısını kapsar. Kısaca ana enerji kaynağımızda diyebiliriz. Karbonhidrat, performansımız ve enerji metabolizmamız için önemlidir. Fakat protein ve yağ kadar kritik değildir. Yani sağlıklı bir birey, hiç karbonhidrat tüketmeden de herhangi bir sağlık problemi yaşamadan hayatına devam edebilir.",
                    Tarih = new DateTime(2024,05,13),
                    ImageUrl = "https://www.agirsaglam.com/wp-content/uploads/2017/08/antrenman-rehberi-uai-1500x843.jpeg",
                    Tip = 2

                },
                new Duyuru()
                {
                    Id = 5,
                    Baslik = "Kolajen Nedir, Ne İşe Yarar?",
                    Icerik = "Kolajen vücudumuzda en fazla miktarda bulunan proteindir. Protein kompozisyonunun yaklaşık üçte birini oluşturur. Kemiklerimizin, derimizin, kaslarımızın, tendon ve bağ dokularımızın ana yapı taşlarındandırlar.Yunanca “kolla”, yani yapıştırıcı anlamına gelir. Bu dokuları bir arada tutar ve onarılmalarında rol oynar. Kısaca vücut bütünlüğünü korur.\r\n\r\nDüşük kolajen seviyeleri, derinin elastikliğini kaybetmesine, tendon ve bağ dokularımızın sertleşmesine, kas kütlemizin azalmasına ve eklemlerin zarar görmesine sebep olabilir.",
                    Tarih = new DateTime(2024,05,18),
                    ImageUrl = "https://www.agirsaglam.com/wp-content/uploads/2017/08/antrenman-rehberi-uai-1500x843.jpeg",
                    Tip = 2

                },
                new Duyuru()
                {
                    Id = 6,
                    Baslik = "PRE WORKUT | ANTRENMAN ÖNCESİ ENERJİ VE GÜÇ SUPPLEMENTLERİ",
                    Icerik = "Pre workout supplementleri antrenman öncesi enerji ve güç artışı için kullanılıyor. Enerji içeceği veya antrenman öncesi kahve de dahil olmak üzere birçok şeye pre workout desteği diyebiliriz.",
                    Tarih = new DateTime(2024,06,02),
                    ImageUrl = "https://www.sportsuniverse.com.tr/wp-content/uploads/2020/06/905A8B53-D0A3-45E3-8CDF-3AA4A5B9C24F.jpeg",
                    Tip = 2

                },

            };
        }

        public List<Duyuru> GetTumDuyurular(int pageItemCount, int skipCount)
        {
            List<Duyuru> result = new List<Duyuru>();

            for (int i = 1; i < 400; i++)
            {
                result.Add(new Duyuru
                {
                    Id = i + 6,
                    Baslik = $"Başlık {i}",
                    Icerik = $"İçerik {i}",
                    ImageUrl = "",
                    Tip = i % 2 == 1 ? 1 : 2,
                    Tarih = DateTime.Today

                });
            }

            return result
                .Skip(skipCount)
                .Take(pageItemCount)
                .ToList();
        }
    }
}
