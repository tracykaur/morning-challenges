# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

def vowels (string)
  array = Array.new
  string.each_char do |char|
    char_1 = char.downcase
    if char_1 == "a" || char_1 == "e" || char_1 == "i" || char_1 == "o" || char_1 == "u"
      array.push(char)
    end
  end
  return array
end
