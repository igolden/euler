##
# 10 - Summation of Primes 
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.#
##
require 'prime'
require 'benchmark'

def calc_summation
  max = 2000000
  i=1
  sum=0

  while i < max
    sum += i if Prime.prime? i
    i += 1
  end
  puts "Sum is #{sum}"
end

time = Benchmark.realtime do
  calc_summation
end

puts time
#
# This solution is slop, but got the answer.
# So I benchmarked it to make sure it took
# under a minute. Took about 18-20 seconds
# for me on avg. Should def traverse primes
# in a more efficient manner
