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
  hash = {}
  case
  when income <= 18200
    tax = 0
  when income > 18200 && income <= 37000
    tax = (income - 18200) * 0.19
  when income > 37000 && income <= 87000
    tax = (income - 37000) * 0.325 + 3572
  when income > 87000 && income <= 180000
    tax = (income - 87000) * 0.37 + 19822
  when income > 180000
    tax = (income - 180000) * 0.45 + 54232
  end
  hash = { income: income, tax: tax, income_after_tax: (income - tax) }
end
