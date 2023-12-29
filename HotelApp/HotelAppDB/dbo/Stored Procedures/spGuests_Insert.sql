CREATE PROCEDURE [dbo].[spGuests_Insert]
	@firstName nvarchar(50),
	@lastName nvarchar(50)
AS
BEGIN
	set nocount on;

	if not exists (select 1 from dbo.Guests where FirstName = @firstName and LastName = @lastName)
	begin
		insert into dbo.Guests(FirstName, LastName) 
		values (@firstName, @lastName)
	end

	select top 1 [Id], [FirstName], [LastName]
	from dbo.Guests 
	where FirstName = @firstName and LastName = @lastName;
END
