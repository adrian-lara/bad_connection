ready_to_quit = false
puts "HELLO, THIS IS A GROCERY STORE!"


goodbye_count = 0

alphabet = '' #define an alphabet string to search for any lowercase letter later
['a'..'z'].each { |alpha| alphabet += alphabet }

until ready_to_quit

  input = gets.chomp

  #this if/end could be a method
  if input.empty?
    puts "HELLO?!"
  elsif input == "GOODBYE!" && goodbye_count == 0
    goodbye_count += 1
    puts "ANYTHING ELSE I CAN HELP YOU WITH?"
  elsif input == "GOODBYE!" && goodbye_count == 1
    goodbye_count += 1
    ready_to_quit = true
  elsif input == input.upcase #if all uppercase letter
    puts "NO, THIS IS NOT A PET STORE."
  elsif input.count(alphabet) == 0 #if any lowercase letter
    puts "I AM HAVING A HARD TIME HEARING YOU."
  end

end

puts "THANK YOU FOR CALLING!"
