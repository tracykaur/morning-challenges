# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

# def includedOnce (haystack, needle)
#   hash = {}
#   haystack.each { |string| hash.has_key?(string) ? hash[string] += 1 : hash[string] = 1 }
#   hash[needle] == 1 ? true : false
# end

def includedOnce (haystack, needle)
  hash = {}
  haystack.each do |string|
    if hash.has_key?(string)
      hash[string] += 1
    else
      hash[string] = 1
    end
  end
  if hash[needle] == 1
    return true
  else
    return false
  end
end
