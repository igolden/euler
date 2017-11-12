##
# 04 - Project Euler
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(num)
  _num = num.to_s
  return true if _num == _num.reverse
  return false
end

def main(max)
  i = max
  n = max
  highest = 0
  while i > 100
    while n > 100
      multiple = i * n
      if is_palindrome(multiple)
        highest = multiple if multiple > highest
      end
      n -= 1
    end
    i -= 1
    n = max
  end
  puts "Highest palindrome: #{highest}"
end

main(999)

