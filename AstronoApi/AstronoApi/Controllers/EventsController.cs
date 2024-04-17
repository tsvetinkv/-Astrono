using Microsoft.AspNetCore.Mvc;
using Services.Models;
using Services.Contracts;

namespace AstronoApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class EventsController : ControllerBase
    {
        private readonly IEventsService eventsService;
        public EventsController(IEventsService _eventsService)
        {
            eventsService = _eventsService;
        }

        [HttpGet("GetAllEvents")]
        public ICollection<EventModel> GetAllEvents()
        {
            return eventsService.GetAllEvents();
        }

        [HttpGet("GetEventById/{id}")]
        public EventModel GetById(long id)
        {
            return eventsService.GetById(id);
        }

        [HttpPost("SaveEvent")]
        public async Task<IActionResult> SaveEvent(EventModel eventModel)
        {
            await eventsService.SaveEvent(eventModel);

            if (eventModel.Description.Contains("XYZ Widget"))
            {
                return BadRequest();
            }
            return CreatedAtAction(nameof(SaveEvent), new { id = eventModel.Id }, eventModel);
        }

        [HttpDelete("DeleteEvent")]
        public async Task<IActionResult> DeleteEvent(EventModel eventModel)
        {

             await eventsService.Delete(eventModel);

            return CreatedAtAction(nameof(DeleteEvent), eventModel);


        }
    }
}
