using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Repositories.Enums;
using Services.Contracts;
using Services.Models;

namespace AstronoApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class TranslationsController : ControllerBase
    {
        private readonly ITranslationsService translationsService;
        public TranslationsController(ITranslationsService _translationsService)
        {
            translationsService = _translationsService;
        }

        [HttpGet("GetAllTranslations/{page}")]
        public ICollection<TranslationsModel> GetAllTranslations(PagesEnum page, string language)
        {
            return translationsService.GetAllTranslations(page, language);
        }

        [HttpGet("GetTranslationById/{id}")]
        public TranslationsModel GetById(long id)
        {
            return translationsService.GetById(id);
        }
    }
}
