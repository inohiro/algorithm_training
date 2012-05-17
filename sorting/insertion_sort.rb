require './util.rb'
require 'pp'

def insertion_sort( array )
  for i in 0..( array.length - 1 )
    j = i
    while j > 0 and ( array[j-1] > array[j] )
      array.swap( j-1, j )
      j = j - 1
    end
  end
  array
end

rand_array = create_rand_array
pp rand_array
pp insertion_sort rand_array
