module Punch
	def punch(target)
		if target.caffeine_level > 0
			if @caffeine_level > 0
				if strength < 5
					target.caffeine_level -= 2
					@caffeine_level -= 1
					@strength -= 1
					puts "Nice hit!"
					puts "#{target.scream}"
				elsif strength >= 5
					target.caffeine_level -= 4
					@caffeine_level -= 1
					@strength -= 1
					puts "#{target.name} was somersalted into the air!!!!!!!!"
					puts "#{target.run}"
				end
			else
				puts "You are too tired to throw a punch.  Drink some coffee, fool."
				@caffeine_level = 0
			end
		elsif target.caffeine_level <= 0
			puts "#{target.name} has been knocked out.  Nice victory."
			target.caffeine_level = 0
		end
	end
end


class Person
	attr_accessor :name
	attr_accessor :caffeine_level
	def initialize(name, caffeine_level = 10)
		@name = name
		@caffeine_level = caffeine_level
		puts "Hi, I'm #{@name}"
	end
	def run
		puts "#{@name}'s outta here!"
	end
	def scream
		puts "Ahhhhhh! Don't hurt me!!!!!"
	end
	def drink_coffee(cups)
		cups.times do
			@caffeine_level += 1
		end
		puts "#{@name}'s caffeine level is now #{@caffeine_level}"
	end
end

class PowerRanger < Person
	include Punch
	attr_accessor :strength
	attr_accessor :color
	attr_accessor :strength
	@@use_megazord = []
	def initialize(name, strength, color)
		super(name, caffeine_level = 10)
		@strength = strength
		@color = color
		@@use_megazord << self #pushes the instance into a class variable.
		puts "#{@name} is here for the purpose of fighting evil.  Like evil ninjas.  I will not fail!"
	end
	def self.use_megazord
		@@use_megazord.each {|x| x.strength = 5000} #iterates through the array with the variable x, and changes the strength to 5000.
		@@use_megazord.each {|x| x.caffeine_level = 5000}
		puts "#{@@use_megazord}"
		puts "All Power Rangers now have a strength of 5000!!! Crush your enemies, see them driven before you, and hear the lamentation of their women!"
	end

end

class EvilNinja < Person
	include Punch
	attr_accessor :evilness
	attr_accessor :strength
	
	def initialize(name, evilness, strength)
		super(name, caffeine_level = 10)
		@evilness = evilness
		@strength = strength
		puts "#{@name} will cause chaos and mayhem!  he is #{@evilness} times the evil of a person and you are doomed!"
	end
	
	def cause_mayhem(victim)
		victim.caffeine_level = 0
		puts "#{victim.name}'s caffeine level has been reduced to zero, you are now a ZOMBIE!!!!!"
	end
end

def fight_scene
	john = Person.new("John")
	scott = Person.new("Scott")
	blueranger = PowerRanger.new("Blue Ranger", 7, "blue")
	redranger = PowerRanger.new("Red Ranger", 4, "red")
	scooby = EvilNinja.new("Scooby", 1000, 10)
	zelda = EvilNinja.new("Zelda", 500, 8)

	zelda.punch(john)
	zelda.punch(scott)
	blueranger.punch(zelda)
	scooby.punch(blueranger)
	redranger.punch(scooby)
	scooby.cause_mayhem(john)
	scooby.cause_mayhem(scott)
	zelda.punch(john)
	zelda.punch(scott)
	john.drink_coffee(10)
	scott.drink_coffee(8)
	scooby.cause_mayhem(blueranger)
	zelda.cause_mayhem(redranger)
	PowerRanger.use_megazord
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	blueranger.punch(scooby)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)
	redranger.punch(zelda)


end




