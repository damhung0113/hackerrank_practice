#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def lonelyinteger(a)
  hash = {}

  a.each do |e|
    hash[e] ||= 1

    hash[e] ? (hash[e] += 1) : (hash[e] = 1)
  end

  hash.each do |k, v|
    return k if v == 1
  end
end


# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
#
# n = gets.strip.to_i
#
# a = gets.rstrip.split.map(&:to_i)
result = lonelyinteger [1,2,1,5,2,5,1,5,2,3]

p result

# fptr.write result
# fptr.write "\n"
#
# fptr.close()
