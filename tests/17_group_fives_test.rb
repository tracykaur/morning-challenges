require 'test/unit'
require_relative '../17_group_fives'

class GroupFivesTest < Test::Unit::TestCase
  def test_methods_exist
    # Make sure divisble_by_five exists and expects an argument
    assert_raise(ArgumentError) { divisible_by_five }
    # Make sure group_fives exists and expects an argument
    assert_raise(ArgumentError) { group_fives }
  end

  def test_divisible_by_five
    assert_equal(divisible_by_five(5), true)
    assert_equal(divisible_by_five(3), false)
  end
  def test_group_fives
    # Empty array should return two empty arrays
    assert_equal(group_fives([]), [[],[]])

    # Functional test
    numbers = [9, 4, 25, 3, 5, 30, 2, 8, 10, 100]
    fives = [25, 5, 30, 10, 100]
    non_fives = [9, 4, 3, 2, 8]
    assert_equal(group_fives(numbers), [fives,non_fives])
  end
end
