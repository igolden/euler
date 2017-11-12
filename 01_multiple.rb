##
# 02 - Project Euler
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
def is_divisible_by(i)
  return true if (i % 3) == 0
  return true if (i % 5) == 0
  return false
end

def main
  i = 0
  sum = 0
  while i < 1000
    sum += i if is_divisible_by i
    i += 1
  end
  puts sum
end


main
