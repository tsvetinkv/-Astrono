using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories.Entities
{
    [Table("Events")]
    public class Events
    {
        [Key]
        public long Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string TranslatedName { get; set; }
        public string TranslatedDescription { get; set; }
        public bool IsMeteor { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }




    }
}
