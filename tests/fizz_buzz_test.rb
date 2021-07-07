require 'test/unit'
require_relative '../12_fizzbuzz.rb'


class FizzBuzzTest < Test::Unit::TestCase
  def test_fizz_buzz
    assert_equal(2, fizz_buzz(2))
    assert_equal("Fizz", fizz_buzz(3))
    assert_equal("Buzz", fizz_buzz(5))
    assert_equal("FizzBuzz", fizz_buzz(15))
  end
end