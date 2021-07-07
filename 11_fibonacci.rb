# nthFibonacci
#
# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.
#
# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8
#
# Write a method that will return the nth number of the sequence.
#
# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.
#
# Difficulty:
# 6/10
#
# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8
#
# Check your solution by running the tests:
# ruby tests/11_fibonacci_test.rb
#

def nthFibonacci (n)
  
  fib_array = [0,1]
  fib_array << fib_array[-2] + fib_array[-1] while fib_array.length <= n
  fib_array[n]
  # end

  # fib_array = nil
  # result
  # if n == 0
  #   return 0
  # elsif n == 1
  #   return 1
  # else
  #   return nthFibonacci(n - 1) + nthFibonacci(n - 2)
  # end

  # sum = 0
  # first = 0
  # second = 1


  # while sum <= 100
  #   sum = first + second
  #   fib_array << sum
  #   first = second
  #   second = sum
  # end
  # puts fib_array.inspect

end
puts nthFibonacci(200001)
