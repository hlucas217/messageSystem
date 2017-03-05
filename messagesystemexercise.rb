
message_array = []

counter = 0
looping = true

while looping
if (counter <= 2)
	puts "Type 'a' to enter and store a message, 'b' to retrieve a message and 'c' to exit."
end

if (counter > 2)
	puts "You have the maximum number of messages stored. Type 'b' to retrieve a message and 'c' to exit."
end

user_choice = gets.chomp

	if (user_choice == 'a')
		
		if (counter <= 2)
			puts "Enter your message."
			user_message = gets.chomp
			

			message_array << user_message

			message_id = message_array.length - 1
			counter = counter + 1
			puts "Your id number is: #{message_id}. Save this number for later in order to retrieve your message."
		end
	end

	if (user_choice == 'b')
		puts "Type the id number of the message you would like to retrieve."
		message_id = gets.to_i 
		puts "Your message is #{message_array[message_id]}."
	end

	if (user_choice == 'c')
		puts "You have chosen to exit. Goodbye!"
		looping = false
	end
end
