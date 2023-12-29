using HotelAppLibrary.Models;
using System;
using System.Collections.Generic;

namespace HotelAppLibrary.Data
{
    public interface IDatabaseData
    {
        void BookGuest(string firstName, string lastName, DateTime startDate, DateTime endDate, int roomTypeId);
        void CheckedIn(int boookingsId);
        List<RoomTypeModel> GetAvailableRoomTypes(DateTime startDate, DateTime endDate);
        RoomTypeModel GetRoomTypeById(int id);
        List<BookingsModel> SearchBookings(string lastName);
    }
}