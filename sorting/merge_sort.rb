require './util.rb'
require 'pp'

def merge( left, right )
  final = []
  until left.empty? or right.empty?
    final << ( left.first < right.first ? left.shift : right.shift )
  end
  final + left + right
end

def merge_sort( array )
  middle = ( array.length - 1 ) / 2
  merge( array[0..middle], array[middle+1..array.length-1])
end

rand_array = create_rand_array
pp rand_array
pp merge_sort rand_array
