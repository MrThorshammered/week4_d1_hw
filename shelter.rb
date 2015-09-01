class Shelter

attr_reader :name
attr_accessor :clients, :pets, :adoption

	def initialize name
		@name = name
		@clients=[]
		@pets=[]
		@adoption=[]
	end

	def new_client(client_name, client_age, client_gender, number_of_pets)
		clients << Clients.new(client_name, client_age, client_gender, number_of_pets)
	end

	def add_pet(animal_names, breed, age, gender, favorite_toys)
		pets << Animals.new(animal_names, breed, age, gender, favorite_toys)
	end

	def add_adoption(animal_names, breed, age, gender, favorite_toys)
		adoption << Animals.new(animal_names, breed, age, gender, favorite_toys)
	end

end