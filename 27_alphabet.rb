# Have the function AlphabetSoup(str) take the str string parameter being
# passed and return the string with the letters in alphabetical order
# (ie. hello becomes ehllo). Assume numbers and punctuation symbols will
# not be included in the string.

def AlphabetSoup(str) # Bubble sort
  j = 0
  while j < str.length
    i = 0
    while (i + 1) < (str.length - j)
      if str[i] > str[i+1]
        temp = str[i]
        str[i] = str[i+1]
        str[i+1] = temp
      end
      i += 1
    end
    j += 1
  end
  return str
end

puts AlphabetSoup('zyxihgfedcba')
