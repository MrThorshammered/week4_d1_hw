require_relative 'animals'
require_relative 'clients'
require_relative 'shelter'

new_shelter = Shelter.new('Mikes Shelter')


def list_clients new_shelter
	new_shelter.clients.each_with_index {|client, index| puts "#{index}: #{client.client_name}: #{client.client_age}: #{client.client_gender}: #{client.number_of_pets}"}
end

def list_pets new_shelter
	new_shelter.pets.each_with_index{ |animals, index| puts "#{index}: #{animals.animal_names}: #{animals.breed}: #{animals.age}: #{animals.gender}: #{animals.favorite_toys}"}
end

def list_adoptions new_shelter
	new_shelter.adoption.each_with_index{ |animals, index| puts "#{index}: #{animals.animal_names}: #{animals.breed}: #{animals.age}: #{animals.gender}: #{animals.favorite_toys}"}
end

def menu
	puts `clear`
	puts '*' * 52
	puts "Welcome to Mike's catery and kennels\n".center 50
	puts '*' * 52
	puts '1: Add a new client'
	puts '2: List clients'
	puts '3: Add a new animal'
	puts '4: Current animal list'
	puts '5: Add a new animal for adoption'
	puts '6: Current adoption list'
	puts 'q: Quit'
	print '--->'
	gets.chomp
end

response = menu


while response.downcase != 'q'
	case response
	when '1' #add a new client
		puts 'Name of new clients?'
		client_name = gets.chomp
		puts 'What is the age of the new client?'
		client_age = gets.chomp
		puts 'What is the clients gender?'
		client_gender = gets.chomp
		puts 'How many pets does the client own?'
		number_of_pets = gets.chomp

		new_shelter.new_client(client_name, client_age, client_gender, number_of_pets)
		# puts new_shelter.new_client(client_name, client_age, client_gender, number_of_pets)
		gets
	when '2' #list clients
		puts 'Here are all our clients:'
		list_clients(new_shelter)
		gets

	when '3' #add an new animal
		puts 'What are the animals names?'
		animal_names = gets.chomp 
		puts 'What are the animals breeds?'
		breed = gets.chomp 
		puts 'What are the animals ages?'
		age = gets.chomp 
		puts 'What are the animals genders?'
		gender = gets.chomp 
		puts 'What are the animals favourite toys?'
		favorite_toys = gets.chomp 
	
		new_shelter.add_pet(animal_names, breed, age, gender, favorite_toys)

	when '4' #current animal list
		puts 'Here are all our animals:'
		list_pets(new_shelter)
		gets	

	when '5' #add a new animal for adoption
		puts 'What are the animals names?'
		animal_names = gets.chomp 
		puts 'What are the animals breeds?'
		breed = gets.chomp 
		puts 'What are the animals ages?'
		age = gets.chomp 
		puts 'What are the animals genders?'
		gender = gets.chomp 
		puts 'What are the animals favourite toys?'
		favorite_toys = gets.chomp 

		new_shelter.add_adoption(animal_names, breed, age, gender, favorite_toys)

	when '6' #animal adoption list
		puts 'Here are all our animals for adoption:'
		list_adoptions(new_shelter)
		gets

	end

	response = menu

end