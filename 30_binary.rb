#Write a Ruby function to convert an integer value to binary.

#if you want write a test to validate your method.

def binary(num)
  return "0" if num == 0
  binary_string = ""
  while num >= 1
    num % 2 == 0 ? binary_string += "0" : binary_string += "1"
    num /= 2
  end
  return binary_string.reverse
end

puts binary(202)
puts binary(1569)
puts binary(0)
