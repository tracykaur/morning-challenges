# 2. There is an employee at The Company who needs some code written that will
# provide them with the first 100 numbers of the Fibonacci sequence (no one
# really knows why the employee needs this information but let's do it anyway!).

fib_array = [0, 1]
while fib_array.length < 100
  fib_array.push(fib_array[(fib_array.length - 1)] + fib_array[(fib_array.length - 2)])
end
puts fib_array
