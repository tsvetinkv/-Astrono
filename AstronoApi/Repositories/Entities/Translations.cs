using Repositories.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories.Entities
{
    [Table("Translations")]
    public class Translations
    {
        [Key]
        public long Id { get; set; }
        public string Bg { get; set; }
        public string En { get; set; }
        public PagesEnum Page { get; set; }

    }
}
