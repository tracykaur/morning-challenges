# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm.
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?
cost_per_sheet = 28.47
circle_base_needed = 500.0
diameter_of_circle = 0.32
length_sheet = 2.4
width_sheet = 1.2
effective_length_sheet = (2.4 / 0.32).truncate
effective_width_sheet = (1.2 / 0.32).truncate
circle_base_per_sheet = effective_length_sheet * effective_width_sheet
sheets_needed_for_circle_bases = (circle_base_needed / circle_base_per_sheet).ceil # 24
total_cost = sheets_needed_for_circle_bases * cost_per_sheet

# Total cost
puts "$#{total_cost}"

puts ""

# For the first 23 sheets
total_waste_area = 0
wasted_length = length_sheet - effective_length_sheet * diameter_of_circle
wasted_width = width_sheet - effective_width_sheet * diameter_of_circle
wasted_area = wasted_width * length_sheet + wasted_length * effective_width_sheet * diameter_of_circle
total_waste_area += wasted_area * 23
# Waste for circles
waste_circle_area_percentage = 0.215
square_area_of_circle = diameter_of_circle ** 2
waste_circle_area = waste_circle_area_percentage * square_area_of_circle
total_waste_area += waste_circle_area * circle_base_per_sheet * 23

# For the last sheet
circle_base_for_last_sheet = circle_base_needed - (circle_base_per_sheet * 23) # 17
total_area_of_circle = circle_base_for_last_sheet * Math::PI * (diameter_of_circle / 2) ** 2
waste_area_for_last_sheet = length_sheet * width_sheet - total_area_of_circle
total_waste_area += waste_area_for_last_sheet

# Total waste area of plywood sheets in m^2
puts "#{sprintf('%.2f', total_waste_area)} meter square"
