require 'test/unit'
require_relative '../12_fizzbuzz'

class FizzBuzztest < Test::Unit::TestCase
  def test_fizzbuzz
    assert_equal("fizz", fizzbuzz(3))
    assert_equal("buzz", fizzbuzz(5))
    assert_equal("fizzbuzz", fizzbuzz(15))
    assert_equal(1, fizzbuzz(1))
  end
end
