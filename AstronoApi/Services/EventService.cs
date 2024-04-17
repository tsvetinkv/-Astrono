using Microsoft.EntityFrameworkCore;
using Repositories;
using Repositories.Entities;
using Services.Contracts;
using Services.Mapers;
using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class EventService : IEventsService
    {
        private readonly IEfRepository<Events> eventRepository;

        public EventService(IEfRepository<Events> eventRepository)
        {
            this.eventRepository = eventRepository;

        }
        public ICollection<EventModel> GetAllEvents()
        {
            var elements = eventRepository.All().Select(e => e.MapEventModelToEventEntity()).ToList();
           return elements;
        }

        public EventModel GetById(long id)
        {
            var eventElements = eventRepository.GetById(id).MapEventModelToEventEntity();
            return eventElements;
        }

       public async Task Delete(EventModel eventModel)
        {
            var eventElement = eventRepository.GetById(eventModel.Id);
            if (eventModel != null)
            {
                eventRepository.Delete(eventElement);
            }
            else
            {
                throw new ArgumentException("There must be event in the db to delete it");
            }
            await eventRepository.SaveChangesAsync();

        }

        public async Task SaveEvent(EventModel eventModel)
        {
            if(eventModel.Id > 0)
            {
                var element = eventRepository.GetById(eventModel.Id);

                if (eventModel != null)
                {
                   var eventToUpdate =  eventModel.MapEventEntityToEventModel();
                    eventRepository.Update(eventToUpdate);
                }
                else
                {
                    throw new ArgumentException("There must be event in the db to update it");
                }
            }
            else
            {
                var element = eventModel.MapEventEntityToEventModel();
                eventRepository.Add(element);
            }

         await eventRepository.SaveChangesAsync();

        }

    }
}
