##
# 09 - Project Euler
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
##
# What do I know?
#
#   a + b + c = 1000
#
#   a < b < c
#
#   a < sum/3
#
#   a < b < s/2


def find_triples_that_sum_to(sum)
  a = 1
  found = false
  while (a < (sum/3))
    b=a
    while (b < (sum/2))
      c = sum - a - b

      found = true if ((a*a) + (b*b) == (c*c))
      break if found
      b += 1
    end
    break if found
    a += 1
  end
  puts "#{a}, #{b}, #{c}"
  puts a*b*c
end

find_triples_that_sum_to(1000)
