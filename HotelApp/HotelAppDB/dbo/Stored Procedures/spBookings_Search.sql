CREATE PROCEDURE [dbo].[spBookings_Search]
	@lastName nvarchar(50),
	@startDate date
AS
BEGIN
	set nocount on;

	select [g].[FirstName], [g].[LastName], [b].[Id], [b].[RoomId], 
			[b].[GuestId], [b].[StartDate], [b].[EndDate], [b].[CheckedIn], 
			[b].[TotalCost], [r].[RoomNumber], [r].[RoomTypeId], 
			 [rt].[Title], [rt].[Description], [rt].[Price]
	from dbo.Bookings b
	inner join dbo.Guests g on b.GuestId = g.Id
	inner join dbo.Rooms r on b.RoomId = r.Id
	inner join dbo.RoomTypes rt on r.RoomTypeId = rt.Id
	where b.StartDate = @startDate and g.LastName = @lastName;
END
