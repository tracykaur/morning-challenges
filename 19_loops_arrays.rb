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

drinks_on_order = {'cocktail' => 3, 'water' => 2, 'beer' => 6}

loop do
  puts "What would you like"
  order = gets.chomp
  drinks_on_order["#{order}"] += 1
  puts drinks_on_order
end

puts ((drinks_on_order['cocktail'] * 22) - (drinks_on_order['cocktail'] * 8) +
     (drinks_on_order['water'] * 3) - (drinks_on_order['water'] * 0.15) +
     (drinks_on_order['beer'] * 12) - (drinks_on_order['beer'] * 3))
