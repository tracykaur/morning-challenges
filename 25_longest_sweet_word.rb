# Return the length of the longest word in the provided sentence.
# Your response should be a number.

str = "Cupcake ipsum dolor sit amet powder fruitcake carrot cake sweet.
        Candy carrot cake brownie danish consectetur macaroon wafer cake
        dragée. Lemon drops jelly beans gummi bears topping muffin pastry.
        Chupa chups muffin tart exercitation cotton candy. Cake gingerbread
        I love candy canes chocolate bar I love. Danish dessert bonbon
        muffin chupa chups. Ice cream fruitcake chupa chups pastry wafer
        carrot cake apple pie. I love I love reprehenderit cotton candy
        brownie I love jelly. Cookie jelly-o caramels candy. Carrot cake
        topping cheesecake donut."

def findLongestWord(str)
  str_array = str.scan(/[^\.\s]+/)
  longest_length = 0
  str_array.each do |word|
    longest_length = word.length if word.length > longest_length
  end
  return longest_length
end

puts findLongestWord(str)
