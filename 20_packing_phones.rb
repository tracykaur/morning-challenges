
# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  width 5cm, length 7.4cm, and depth 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some pseudo code first that steps through all the commands you need to write. Keep it as simple as you can.


prism = [5.0, 7.4, 4]
box = {width: 32.0, length: 43, depth: 22.1}
prism_array = []


# puts width_div = (box_dimensions[:width] / phone_dimensions[:width]).floor
# puts length_div = (box_dimensions[:length] / phone_dimensions[:length]).floor
# puts depth_div = (box_dimensions[:depth] / phone_dimensions[:depth]).floor
#
# phones_in_box = width_div * length_div * depth_div
# puts phones_in_box

(0..2).each do |num|
  prism_array.push(prism.rotate(num))
  # puts prism_array.inspect
end

prism_array.each do |prism_num|
  width = (  box[:width] / prism_num[0]).floor
  length = (  box[:length] / prism_num[1]).floor
  depth = (  box[:depth] / prism_num[2]).floor
  # puts "Width: #{width}"
  # puts "length: #{length}"
  # puts "depth: #{depth}"
  if prism_num[0] == 5.0
    puts "This many phones if you stack the width wise: #{width * length * depth}"
  elsif prism_num[0] == 7.4
    puts "This many phones if you stack the length wise: #{width * length * depth}"
  elsif prism_num[0] == 4
    puts "This many phones if you stack the depth wise: #{width * length * depth}"
  end
end
