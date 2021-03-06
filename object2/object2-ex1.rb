class MyCar 

	attr_accessor :color
	attr_reader :year

	def self.gas_mileage(gas, mileage)
		"#{mileage/gas} miles per gallon of gas"
	end

	def initialize(year, model, color)
		@year = year
		@model = model
		@color = color
		@current_speed = 0
	end

	def current_speed
		puts @current_speed
	end

	def speed_up(number)
		@current_speed += number
		puts "Speed up #{number}"
	end

	def brake(number)
		@current_speed -= number
		puts "brake down #{number}"
	end

	def shut_off
		@current_speed = 0
		self.current_speed
	end
	
	def spray_paint(color)
		self.color = color # 結果輸出和@color, 那應該差別在哪？ 應該優先用哪個？
		puts "your car color is #{color}"
	end
end

p MyCar.gas_mileage(10, 100)