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

def fizz_buzz (n)
  list = []
  count = 1
  100.times do
    if count % 3 == 0 && count % 5 == 0
      list.push("FizzBuzz")
    elsif count % 3 == 0
      list.push("Fizz")
    elsif count % 5 == 0
      list.push("Buzz")
    else
    list.push(count)
    end
    count += 1
  end
  list[-1]
end

# fizz_buzz(15)
