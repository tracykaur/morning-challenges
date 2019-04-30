# Largest Number
#
# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Difficulty:
# 2/10
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by running the tests:
# ruby tests/02_largest_number_test.rb
#

def sum_numbers (numbers)
  add = 0
  numbers.each do |num|
    add += num
  end
  add
end
