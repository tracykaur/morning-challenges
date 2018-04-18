# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

# you are working at a bar where you have a current backlog of drinks to make:
# 3 party parrot cocktails
# 2 party parrot waters
# and
# 6 party parrot beers

# write a program that asks the customer for their order.
# if they order a party parrot cocktail, add one to the number of party parrot cocktails you need to make,
# if they order a party parrot water, add one to the number of party parrot waters you need to make,
# if they order a party parrot beer, add one to the number of party parrot beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have

time_took_coming_to_class = 15
puts "I rode my bike to school today and it took me #{time_took_coming_to_class} minutes."

cocktails = 3
waters = 2
beers = 6

loop do
  system('clear')
  puts "_________________________________________"
  puts "Final drinks order: cocktails *#{cocktails}"
  puts "                    beers     *#{beers}"
  puts "                    waters    *#{waters}"
  puts "_________________________________________"
  puts "Would you like a beer, cocktail or water?"
  puts "Cocktail[1]"
  puts "Beer [2]"
  puts "Water[3]"
  puts "_________________________________________"
  input = gets.chomp
  case
  when input == 1
    cocktails += 1

  when input == 2
    beers += 1


  when input == 3
    waters += 1

  end
end
