require '../sorting/util.rb'
require 'pp'

def binary_search( array, target )
  left = 0
  right = array.length - 1
  middle = nil

  while left <= right do
    middle = ( left + right ) / 2
    return middle if array[middle] == target

    if array[middle] < target
      left = middle + 1
    else
      right = middle -1
    end
    nil
  end
end

rand_array = create_rand_array
pp rand_array
pp rand_array.sort!
target = rand_array.sample
puts target
puts binary_search( rand_array, target )
