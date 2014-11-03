class Car
	def initialize
		@fuel = 10
		@distance = 0
	end

	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20
			@fuel = 0
			puts "You've run out of gas, you need to fuel up!"	
		end
	end

	def fuel_up
		fuel_needed = 10.0 - @fuel
		puts "This will cost you $#{fuel_needed * 3.5}."
		@fuel = 10
	end
end