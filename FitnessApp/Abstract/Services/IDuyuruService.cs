using FitnessAppWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Abstract.Services
{
    internal interface IDuyuruService
    {
        List<Duyuru> GetTumDuyurular();
        List<Duyuru> GetTumDuyurular(int pageItemCount, int skipCount);
    }
}
