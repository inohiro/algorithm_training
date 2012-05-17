require '../sorting/util.rb'
require 'pp'

def liner_search( array, target )
  array.each_with_index do |e,i|
    if e == target
      return i
    end
  end
  nil
end

rand_array = create_rand_array
pp rand_array
target = rand_array.sample
puts target
puts liner_search( rand_array, target )
