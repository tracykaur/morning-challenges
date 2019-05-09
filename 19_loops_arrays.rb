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

time_to_class = 15
complete_sentence = "I go to class by bus and it takes #{time_to_class} minutes."
puts complete_sentence

drinks_to_make = { party_parrot_cocktail: 3, party_parrot_water: 2, party_parrot_beer: 6 }

order = ""
until order == "no"
  puts "What would you like to order?"
  order = gets.chomp

  case
    when order == "cocktail"
      drinks_to_make[:party_parrot_cocktail] += 1
    when order == "water"
      drinks_to_make[:party_parrot_water] += 1
    when order == "beer"
      drinks_to_make[:party_parrot_beer] += 1
  end
end
puts "I will have to make:"
drinks_to_make.each do |drink, amount|
  puts "#{amount} orders of #{drink}"
end
profit = 0.0
profit += drinks_to_make[:party_parrot_cocktail] * (22 - 8)
profit += drinks_to_make[:party_parrot_water] * (6 - 0.15)
profit += drinks_to_make[:party_parrot_beer] * (12 - 3)
puts "And the total profit is: #{profit}"
