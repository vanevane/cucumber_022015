require './modules'
class Registration
	attr_accessor:username  #set
	attr_accessor:id  #set
	include Convertions

	def askUserNameAndId()
		$i = 0
		begin
			if $i > 0
				puts ("\tYour username should have the following characters: a-z,0-9 and its leght is no more 11")
			end
			puts("What is your name? ")
			@username= gets.chomp			
			$i +=1
		end while @username !~ /[a-z0-9]{0,11}/

		puts("What is your id? ")
		@id= gets.chomp	
	end

	def createHash(hash_tam)
		created_hash = Hash.new
		hash_tam.times do | value_1 | 
        	askUserNameAndId
        	created_hash[@id] = @username
    	end 
    	return created_hash
	end 	

	def askAmountOfUsers()
		$i = 0
		begin
			if $i > 0
				puts ("\tThe amout of username should be betweend 3-15 values")
			end
			puts("What is the amount of user? ")
			amount = gets.chomp.to_i
			$i +=1
		end while (amount>15) || (amount<3)
		return amount
	end

	def askTypeConversionByAllUsers(hash)
		hash.each{|key, value| 
        	askTypeConversion(value)
    	}
	end

	def askTypeConversion(username)
		$i = 0
		begin
			if $i > 0
				puts ("\tPlease enter a, b or c")
			end
			puts("#{username}, Selec yours type of conversion:")
			puts("\n\t a)Convert from minutes to hours")
			puts("\n\t b)Convert from hours to days")
			puts("\n\t c)Convert from days to Months")
			option = gets.chomp
			$i +=1
		end while option !~ /[a-c]{1}/
		calculateConversion(option)
	end

	def calculateConversion(option)
		#TODO
		if option == "a"
			puts "Insert the value in minutes:"  
			value = gets.chomp.to_i  
			min_hours(value)
		elsif option == "b" 
			puts "Insert the value in hours:"  
			value = gets.chomp.to_i  
			hours_day(value)
 		elsif option == "c" 
 			puts "Insert the value in days:"  
 			value = gets.chomp.to_i   
 			day_month(value)
 		end
	end
end	

def registration_example
    @registration_example ||= Registration.new
end

amount_user = registration_example.askAmountOfUsers
hash_user= registration_example.createHash(amount_user)
registration_example.askTypeConversionByAllUsers(hash_user)
