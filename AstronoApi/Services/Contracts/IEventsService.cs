using Services.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Contracts
{
    public interface IEventsService
    {
        ICollection<EventModel> GetAllEvents();
        EventModel GetById(long id);
        Task Delete(EventModel eventModel);
        Task SaveEvent(EventModel eventModel);
    }
}
