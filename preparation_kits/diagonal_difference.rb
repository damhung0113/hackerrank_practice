#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
  main_diagonal_sum = 0
  main_skew_diagonal_sum = 0
  arr.each_with_index do |row, i|
    main_diagonal_sum += row[i]
    main_skew_diagonal_sum += row[-i - 1]
  end
  (main_diagonal_sum - main_skew_diagonal_sum).abs

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
  arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
