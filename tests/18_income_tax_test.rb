require 'test/unit'
require_relative '../18_income_tax'

class CalculateIncomeTaxTest < Test::Unit::TestCase
  def test_calculate_income_returns_a_hash
    assert_equal(calculate_income_tax(0).class, Hash)
  end
  def test_calculate_income_no_income
    assert_equal(calculate_income_tax(0)[:income], 0)
    assert_equal(calculate_income_tax(0)[:tax], 0)
    assert_equal(calculate_income_tax(0)[:income_after_tax], 0)
  end
  def test_calculate_income_below_tax_free_threshold
    assert_equal(calculate_income_tax(17000)[:income], 17000)
    assert_equal(calculate_income_tax(17000)[:tax], 0)
    assert_equal(calculate_income_tax(17000)[:income_after_tax], 17000)
  end
  def test_calculate_18200
    assert_equal(calculate_income_tax(18200)[:income], 18200)
    assert_equal(calculate_income_tax(18200)[:tax], 0)
    assert_equal(calculate_income_tax(18200)[:income_after_tax], 18200)
  end
  def test_calculate_20k
    assert_equal(calculate_income_tax(20000)[:income], 20000)
    assert_equal(calculate_income_tax(20000)[:tax], 342)
    assert_equal(calculate_income_tax(20000)[:income_after_tax], 19658)
  end
  def test_calculate_40k
    assert_equal(calculate_income_tax(40000)[:income], 40000)
    assert_equal(calculate_income_tax(40000)[:tax], 4547)
    assert_equal(calculate_income_tax(40000)[:income_after_tax], 35453)
  end
  def test_calculate_80k
    assert_equal(calculate_income_tax(80000)[:income], 80000)
    assert_equal(calculate_income_tax(80000)[:tax], 17547)
    assert_equal(calculate_income_tax(80000)[:income_after_tax], 62453)
  end
  def test_calculate_87k
    assert_equal(calculate_income_tax(87000)[:income], 87000)
    assert_equal(calculate_income_tax(87000)[:tax], 19822)
    assert_equal(calculate_income_tax(87000)[:income_after_tax], 67178)
  end
  def test_calculate_160k
    assert_equal(calculate_income_tax(160000)[:income], 160000)
    assert_equal(calculate_income_tax(160000)[:tax], 46832)
    assert_equal(calculate_income_tax(160000)[:income_after_tax], 113168)
  end
  def test_calculate_320k
    assert_equal(calculate_income_tax(320000)[:income], 320000)
    assert_equal(calculate_income_tax(320000)[:tax], 117232)
    assert_equal(calculate_income_tax(320000)[:income_after_tax], 202768)
  end
end
