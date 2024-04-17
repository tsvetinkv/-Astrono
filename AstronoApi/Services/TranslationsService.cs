using Repositories.Entities;
using Repositories;
using Services.Contracts;
using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Services.Mapers;
using Repositories.Enums;

namespace Services
{
    public class TranslationsService : ITranslationsService
    {
        private IEfRepository<Translations> translationRepository;
        string language;

        public TranslationsService(IEfRepository<Translations> _translationRepository)
        {
            translationRepository = _translationRepository;
        }
        public TranslationsModel GetById(long id)
        {
            var translation = translationRepository.GetById(id).MapTranslationEntityToTranslationModel(language);
            return translation;
        }

        public ICollection<TranslationsModel> GetAllTranslations(PagesEnum page, string language)
        {
            var elements = translationRepository.All().Where(p => p.Page == page).Select(e => e.MapTranslationEntityToTranslationModel(language)).ToList();

            return elements;
        }

    }
}
