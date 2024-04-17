using Repositories.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Models
{
    public class TranslationsModel
    {
        public long Id { get; set; }
        public string Text { get; set; }
        public PagesEnum Page { get; set; }

    }
}
