using Repositories.Entities;
using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Mapers
{
    public static class TranslationMapper
    {
        public static TranslationsModel MapTranslationEntityToTranslationModel(this Translations entity, string language)
        {
            string text;
            if(language == "Bg")
            {
                text = entity.Bg;
            }
            else
            {
                text = entity.En;
            }

            return new TranslationsModel
            {
                Id = entity.Id,
                Text = text,
                Page = entity.Page
            };
        }
    }
}
