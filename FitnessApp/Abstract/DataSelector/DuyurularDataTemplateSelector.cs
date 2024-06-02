using FitnessAppWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitnessApp.Abstract.DataSelector
{
    public class DuyurularDataTemplateSelector : DataTemplateSelector
    {
        public DataTemplate HaberTemplate { get; set; }
        public DataTemplate DuyuruTemplate { get; set; }
        protected override DataTemplate OnSelectTemplate(object item, BindableObject container)
        {
            var duyuru = item as Duyuru;

            if (duyuru is not null)
            {
                return duyuru.Tip == 1 ? DuyuruTemplate : HaberTemplate;

                if (duyuru.Tip == 1)
                    return DuyuruTemplate;

                return HaberTemplate;
            }

            return DuyuruTemplate;
        }
    }
}
