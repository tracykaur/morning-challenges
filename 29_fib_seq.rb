# 2. There is an employee at The Company who needs some code written that will
# provide them with the first 100 numbers of the Fibonacci sequence (no one really
# knows why the employee needs this information but let's do it anyway!).

a = [0,1]
x = 0
98.times do
  a.push(a[x] + a[x+1])
  x += 1
end
puts a
