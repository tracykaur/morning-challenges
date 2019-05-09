#   Here are the Australian 2017–18 tax rates.
#
#   INCOME              TAX ON INCOME
#   0 – $18,200         Nil
#   $18,201 – $37,000   19c for each $1 over $18,200
#   $37,001 – $87,000   $3,572 plus 32.5c for each $1 over $37,000
#   $87,001 – $180,000  $19,822 plus 37c for each $1 over $87,000
#   $180,001 and over   $54,232 plus 45c for each $1 over $180,000
#
#   Complete the calculate_tax method, it should return a
#   hash containing: income, tax, income_after_tax
#
#   Test your code:
#   ruby tests/18_income_tax_test.rb
#

def calculate_income_tax (income)

  hash = {income: income}

  if income <= 18200
    hash[:tax] = 0
    hash[:income_after_tax] = income
  end

  if income > 18200 && income <= 37000
    hash[:tax] = ((income - 18200) * 0.19)
    hash[:income_after_tax] = income - hash[:tax]
  end

  if income > 37000 && income <= 87000
    hash[:tax] = 3572 + ((income - 37000) * 0.325)
    hash[:income_after_tax] = income - hash[:tax]
  end

  if income > 87000 && income <= 180000
    hash[:tax] = 19822 + ((income - 87000) * 0.37)
    hash[:income_after_tax] = income - hash[:tax]
  end

  if income > 180000
    hash[:tax] = 54232 + ((income - 180000) * 0.45)
    hash[:income_after_tax] = income - hash[:tax]
  end
hash
end
