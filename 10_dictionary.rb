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
    @dict_hash = {}
  end

  def add_word(word, definition)
    # print "Input a word: "
    # word = gets.chomp.downcase
    # puts ""
    # print "Definition of word: "
    # definition = gets.chomp.downcase
    @dict_hash[word] = definition
  end

  def lookup(word)
    # print "Enter a word to look up: "
    # requested-word = gets.chomp.downcase
    # puts ""
    if @dict_hash[requested-word] != nil
      return @dict_hash[requested-word]
    end
  end

  def total_words
    hash_count = 0
    @dict_hash.each do |key|
      hash_count += 1
    end
    puts "There are #{hash_count} words"
  end

end
