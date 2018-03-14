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


# LONG

# def count_letters (string)
#   result = {}
#   arr = []
#   string.chars.each.count do |x|
#     if x != " "
#       arr << x
#       result[x] = 0
#     end
#   end
#   arr.each do |i|
#     result[i] += 1
#   end
#   result
# end



# refactored

# def count_letters (string)
#   result = {}
#   string.each_char do |x|
#     result[x] = 0 if !result[x]
#     result[x] += 1
#   end
#   result
# end

def count_letters (string)
  result = {}
  string.scan(/.*/i) { |x| result[x] = 0 if !result[x] }
  string.scan(/.*/i) { |x| result[x] += 1 }

# end
  # do |x|
  #   result[x] = 0 if !result[x]
  #   result[x] += 1
  # end
  result
end
