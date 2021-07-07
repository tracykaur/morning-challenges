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
  
  if n == 0
    return 0
  end

  i = 0

  sequence = Array.new

  sequence.push(i)

  i += 1

  sequence.push(i)

  while i < n do
    sequence[i+1] = (sequence[-1]) + (sequence[-2])

    i += 1
  end

  sequence[-1]
end
