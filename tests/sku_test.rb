require 'test/unit'
require_relative '../21_unique_sku.rb'

class UniqueArrayTest < Test::Unit::TestCase



    def test_array_no_repeat
        array1 = [1,2,3,4,5]
        array2 =[1,2,6,7]
        assert_equal(array1|array2, add_remove_duplicates(array1,array2))
        for i in  1..9
            puts " "*(9-i)+"*"*((i*2)-1)+" "*(9-i)
        end
        puts "  Did it pass???"
    end

end
