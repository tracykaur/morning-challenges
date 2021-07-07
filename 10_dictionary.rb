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
  attr_reader :dictionary_hash
  def initialize
    @dictionary_hash = Hash.new
  end

  def add_word(word, definition)
    dictionary_hash[word] = definition
  end

  def lookup(word)
    dictionary_hash[word]
  end

  def total_words
    dictionary_hash.length
  end
end
