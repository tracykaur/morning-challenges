#Write a Ruby function to convert an integer value to binary.

#if you want write a test to validate your method.

def integer_to_binary(x)
  d = []
  loop do
    if x > 0
      d.push(x % 2)
      x = x / 2
    else
      break
    end
  end
  puts d
end

integer_to_binary(156)
