# FizzBuzz
#
# Don't look this one up until you complete it yourself!
# It's a common interview question and there will be plenty
# of spoilers on the interwebs.
#
# This is a trivial question with many simple solutions.
# Try to write the least amount of code as possible.
#
#
# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.
#
# Difficulty:
# 4/10
#
# Example:
# 1
# 2
# Fizz
# 4
# Buzz
# ...etc
#

puts "\nThe readable version...\n"

count = 0
while count != 100
  count += 1
  if count % 3 == 0 && count % 5 == 0
    puts "fizbuzz"
  elsif count % 3 == 0
    puts "fizz"
  elsif count % 5 == 0
    puts "buzz"
  else
    puts count
  end
end


puts "\n\nThe one line (not so readable) version...\n"
(1..100).each {|count| count % 3 == 0 && count % 5 == 0 ? (puts "FizzBuzz") : (count % 3 == 0 ? (puts "Fizz") : (count % 5 == 0 ? (puts "buzz") : (puts count)))}

puts "\n\nThe one line shorter version...\n"

puts (1..100).map {|count| (fb = [["fizz"][count % 3], ["Buzz"][count % 5]].compact.join).empty? ? count : fb}

# def fizzbuzz(count)
#   if count % 3 == 0 && count % 5 == 0
#     return "fizzbuzz"
#   elsif count % 3 == 0
#     return "fizz"
#   elsif count % 5 == 0
#     return "buzz"
#   else
#     return count
#   end
#   # return count
# end
# fizzbuzz(3)
