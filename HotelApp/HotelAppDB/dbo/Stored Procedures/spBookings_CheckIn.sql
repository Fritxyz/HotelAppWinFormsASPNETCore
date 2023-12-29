CREATE PROCEDURE [dbo].[spBookings_CheckIn]
	@bookingsId int
AS

BEGIN
	update dbo.Bookings
	set CheckedIn = 1
	where Id = @bookingsId;
END
