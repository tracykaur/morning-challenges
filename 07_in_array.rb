# In Array
#
# Write a method that will take two arguments: a string and an array.
# Return a boolean indicating whether or not the string
# is found in the array.
#
# Difficulty:
# 2/10
#
# Example:
# in_array("hello", ["hi", "howdy", "hello"]) should return true
# in_array("drake", ["jayz", "kanye", "yachty"]) should return false
#
# Check your solution by running the tests:
# ruby tests/07_in_array_test.rb
#
#Don't use any helpers other than .each
#Try writing it on a whiteboard or paper first
def in_array (needle, haystack)
  ask = false
  haystack.each do |value|
    if value == needle
      ask = true
    end
  end
  ask
end
