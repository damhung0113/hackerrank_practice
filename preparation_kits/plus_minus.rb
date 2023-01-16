#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  positive_count = 0
  negative_count = 0
  zero_count = 0

  arr.each do |e|
    positive_count += 1 if e > 0
    negative_count += 1 if e == 0
    zero_count += 1 if e < 0
  end

  puts sprintf("%.6f", positive_count.to_f / arr.length)
  puts sprintf("%.6f", zero_count.to_f / arr.length)
  puts sprintf("%.6f", negative_count.to_f / arr.length)
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
