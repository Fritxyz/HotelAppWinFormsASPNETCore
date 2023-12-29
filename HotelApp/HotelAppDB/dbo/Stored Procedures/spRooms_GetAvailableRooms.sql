CREATE PROCEDURE [dbo].[spRooms_GetAvailableRooms]
	@roomTypeId int,
	@startDate date,
	@endDate date
AS
BEGIN
	set nocount	on;

	select r.*
	from dbo.Rooms r
	inner join dbo.RoomTypes t on t.Id = r.RoomTypeId
	where r.RoomTypeId = @roomTypeId
	and r.Id not in (
	select b.RoomId	
	from dbo.Bookings b
	where (@startDate < b.StartDate and @endDate > b.EndDate)
			or (b.StartDate <= @endDate and @endDate < b.EndDate)
			or (b.StartDate <= @startDate and @startDate < b.EndDate)
	)
END
