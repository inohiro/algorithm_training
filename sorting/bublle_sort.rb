require './util.rb'
require 'pp'

def bubble_sort( array )
  for i in 0..( array.length - 1 )
    j = array.length - 1
    while i < j
      if array[j-1] > array[j]
        array.swap( j-1, j )
      end
      j = j - 1 # it's not cool :(
    end
  end

  array
end

rand_array = create_rand_array
pp rand_array
pp bubble_sort( rand_array )
