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
#   index = 0
#   count = 0
#   haystack.length.times do
#     if needle == haystack[index]
#       count += 1
#     end
#     index += 1
#   end
#   if count == 1
#     true
#   else
#     false
#   end
# end

def includedOnce (haystack, needle)
  haystack.count(needle) == 1 
end

# includedOnce(['hello','hi','hi'], 'hi')

# includedOnce(['hello','hi','hey'], 'hi')

# includedOnce(['hello','hey','hey'], 'hi')
