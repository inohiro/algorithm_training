def create_rand_array
  array = []
  10.times do
    e = Random.rand( 20 ) + 1
    unless array.index e
      array << e
    end
  end
  array
end

class Array
  def swap( i, j )
    self[i], self[j] = self[j], self[i]
    self
  end
end
