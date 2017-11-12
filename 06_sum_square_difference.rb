##
# 05 - Project Euler
#
# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(range)
  sum = 0
  (1..range).each do |i|
    sum += (i * i)
  end
  return sum
end

def square_of_sum(range)
  sum = 0
  (1..range).each do |i|
    sum += i
  end
  return sum * sum
end

def main(range)
  raise "invalid range" if range < 1 || range.class != Integer

  sum_of_squares = sum_of_squares(range)
  square_of_sum = square_of_sum(range)
  puts square_of_sum - sum_of_squares
end

main(100)



