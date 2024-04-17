using Repositories.Enums;
using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Contracts
{
    public interface ITranslationsService
    {
         TranslationsModel GetById(long id);
        ICollection<TranslationsModel> GetAllTranslations(PagesEnum page, string language);

    }
}
