##
# 07 - Project Euler
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

def find_prime(range)
  i=0
  n=0

  while i < range
    i += 1 if Prime.prime? n
    puts n if i == range 
    exit if i == range
    n += 1
  end
end

find_prime(10001)
