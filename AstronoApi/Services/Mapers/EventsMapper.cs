using Repositories.Entities;
using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Mapers
{
    public static class EventsMapper
    {
       public static EventModel MapEventModelToEventEntity(this Events eventEntity)
        {
           return new EventModel
           {
               Id = eventEntity.Id,
               Name = eventEntity.Name,
               Description = eventEntity.Description,
               TranslatedName = eventEntity.TranslatedName,
               TranslatedDescription = eventEntity.TranslatedDescription,
               IsMeteor = eventEntity.IsMeteor,
               StartDate = eventEntity.StartDate,
               EndDate = eventEntity.EndDate
           };
        }

        public static Events MapEventEntityToEventModel(this EventModel eventModel)
        {
            return new Events
            {
                Id = eventModel.Id,
                Name = eventModel.Name,
                Description = eventModel.Description,
                TranslatedName = eventModel.TranslatedName,
                TranslatedDescription = eventModel.TranslatedDescription,
                IsMeteor = eventModel.IsMeteor,
                StartDate = eventModel.StartDate,
                EndDate = eventModel.EndDate
            };
        }
    }
}
