# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#

class Dictionary

  def initialize
    $hash = {}
  end

  def add_word(word, definition)
    $hash[word] = definition
  end

  def lookup(word)
    $hash[word]
  end

  def total_words
    count = 0
    $hash.each do |x|
      count += 1
    end
    count
  end
end

dictionary = Dictionary.new
dictionary.add_word('ruby', 'A precious stone')

# puts $hash
# puts dictionary.lookup("ruby")
# dictionary.total_words
