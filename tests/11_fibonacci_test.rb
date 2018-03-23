require 'test/unit'
require_relative '../12_fizzbuzz'

class NthFibonacciTest < Test::Unit::TestCase
  def test_nth_fibonacci
    assert_equal(0, fizzbuzz(0))
    assert_equal(2, fizzbuzz(3))
    assert_equal(8, fizzbuzz(6))
  end
end
