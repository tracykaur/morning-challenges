
# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  width 5cm, length 7.4cm, and depth 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some pseudo code first that steps through all the commands you need to write. Keep it as simple as you can.

# BOX:
bl = 43
bw = 32
bh = 22.2
# PACKAGE:
pl = 5
pw = 4
ph = 7.4
# lENGTH:
tl = bl/pl
# WIDTH:
tw = bw/pw
# HEIGHT:
th = bh/ph

tp = tl*tw*th.round

puts tp
