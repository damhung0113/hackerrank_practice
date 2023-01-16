#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  max = arr.max
  min = arr.min
  arr_max = arr.clone
  arr_min = arr.clone
  arr_max.delete_at(arr_max.index(max))
  arr_min.delete_at(arr_min.index(min))

  print arr_max.sum, " ", arr_min.sum
end

arr = [5, 5, 5, 5, 5]

miniMaxSum arr
