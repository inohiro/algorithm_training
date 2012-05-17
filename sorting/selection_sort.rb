require './util.rb'
require 'pp'

def selection_sort( array )
  for i in 0..( array.length - 1 )
    min = i
    for j in ( i + 1 )..( array.length - 1 )
      if array[j] < array[min]
        min = j
      end
    end
    array.swap( i, min )
  end
  array
end

rand_array = create_rand_array
pp rand_array
pp insertion_sort( rand_array )
