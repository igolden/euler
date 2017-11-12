##
# 03 - Project Euler
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
#
require 'prime'

num = 600851475143

def find_largest_prime_factor(num)
  f = 2
  _num = num
  while f <= _num
    if _num % f == 0
      _num /= f
      f -= 1
    end
    f += 1
  end
  puts f
end


find_largest_prime_factor(num)

