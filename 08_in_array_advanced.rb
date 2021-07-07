# In Array Advanced
#
# Don't use any array helper methods except for .each
#
# This is the same as the last challenge with one improvement.
# in_array_advanced takes an additional boolean argument 'strict'.
# If strict is true, in_array should care about leTteR CasIng.
# If strict is false, in_array should return true for any match.
#
# Difficulty:
# 4/10
#
# Example:
# in_array("HeLLo", ["hi", "howdy", "HeLLo"], true) should return true
# in_array("DrAkE", ["jayz", "kanye", "drake"], false) should return true
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return false
#
# Check your solution by running the tests:
# ruby tests/08_in_array_advanced_test.rb
#
#Don't use any helpers other than .each
#Try writing it on a whiteboard or paper first
def in_array_advanced (needle, haystack, strict)
  if strict == true
    haystack.include?(needle)
  else
    haystack.each do |words|
      words.downcase
    end
    haystack.include?(needle.downcase)
  end
end
