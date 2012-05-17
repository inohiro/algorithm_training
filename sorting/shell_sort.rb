require './util.rb'
require 'pp'

def shell_sort( array )
  increment = 4
  while 0 < increment
    for i in 0..( array.length - 1 )
      j = i
      tmp = array[i]
      while j >= increment && ( array[j-increment] > tmp )
        array[j] = array[j-increment]
        j = j - increment
      end
      array[j] = tmp
    end

    if increment/2 != 0
      increment = increment / 2
    elsif increment == 1
      increment = 0
    else
      increment = 1
    end
  end
  array
end

rand_array = create_rand_array
pp rand_array
pp shell_sort rand_array
