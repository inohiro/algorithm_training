require './rand_array.rb'
require 'pp'

class Array
  def swap( i, j )
    self[i], self[j] = self[j], self[i]
    self
  end
end

def bubble_sort( array )
  swapped = false
  while( !swapped )
    for i in 0..( array.length - 1 )
      if array[i-1] > array[i]
        array.swap( i-1, i )
        swapped = true
      end
    end
  end
  array
end

rand_array = create_rand_array
pp rand_array
pp bubble_sort( rand_array )
