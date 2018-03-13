# Count Letters
#
# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.
#
# Difficulty:
# 5/10
#
# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
# count_letters("abcba") should return {"a"=>2, "b"=>2, "c"=>1}
#
# Check your solution by running the tests:
# ruby tests/05_count_letters_test.rb
#

def count_letters (string)
  result = {}
  string.each_char do |char|
    initial_count = 1
    if result.include?(char)
      existing_count = result[char]
      existing_count += 1
      result[char] = existing_count
    else
      result[char] = initial_count
    end
  end
  return result
end

puts count_letters("helllloheh")
