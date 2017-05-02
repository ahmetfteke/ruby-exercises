class NYCVacation
	def initialize
	end
	def add_hotel(hotel)
		@hotels << hotel
		self 
	end
	def add_ticket(ticket)
		@tickets << ticket
		self
	end
	def add_attraction(attraction)
		@attractions << attraction
		self
	end
end

class main
	vacation = NYCVacation.new.add_ticket(Ticket.new).add_attraction(Attraction.new).add_hotel(Hotel.new)
end

