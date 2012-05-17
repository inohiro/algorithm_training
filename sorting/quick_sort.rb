require './util.rb'
require 'pp'

def quick_sort( array )
  return array if array.length < 1

  pivot = array[0]
  right, left = [], []

  for i in 1..( array.length - 1 )
    if array[i] <= pivot
      left << array[i]
    else
      right << array[i]
    end
  end

  left = quick_sort( left )
  right = quick_sort( right )
  devider = [] << pivot
  return left + devider + right
end

rand_array = create_rand_array
pp rand_array
pp quick_sort( rand_array )
