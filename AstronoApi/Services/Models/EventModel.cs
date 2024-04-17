using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Models
{
    public class EventModel
    {
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
