using System;
using System.Collections.Generic;
using System.Text;

namespace HotelAppLibrary.Models
{
    public class RoomTypeModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
    }
}
