
require 'pp'

class Node
  attr_reader :left, :right, :value

  def initialize( value )
    @value = value
    @right = nil
    @left = nil
  end

  def set_value( value )
    @value = value
  end

  def set_left( node )
    @left = node
  end

  def set_rgith( node )
    @right = node
  end
end

class Tree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert_node( value, node = nil )
    if node == nil
      @root = create_new_node( value )
      return
    end

    if node.value > value
      if node.left != nil
        insert_node( value, node.left )
      else
        node.set_left( create_new_node( value ))
      end
    else
      if node.right != nil
        insert_node( value, node.right )
      else
        node.set_right( create_new_node( value ) )
      end
    end
  end

  def find_value( value )
    return node if node.value == value
    if node.value > value
      return nil if node.left == nil
      return find_value( value, node.left )
    end
    if node.value < value
      return nil if node.right == nil
      return find_value( value, node.rigth )
    end
#     return node
  end

  def print_node( depth, node = nil )
    return if node == nil
    print_node( depth + 1, node.left )
    level = 0
    while level < depth
      puts " "
      level += 1
    end
    puts "#{node.value}"
    print_node( depth + 1, node.right )
  end
end

def main
  action = nil
  tree = Tree.new

  while action != 0
    tree.print_node

    puts "Type integer that you want to add tree"
    i = gets.comp.to_i
    return if ( i < 1 or 100 < i )
    insertNode( i, tree )
  end
end

=begin
  def delete_node( value )
    node = @root
    parent_node = nil
    direction = 0

    while( node != nil and node.value != value )
      if node.value > value
        parent_node = node
        node = node.left
        direction = - 1
      else
        parent_node = node
        node = node.right
        direction = 1
      end
    end

    return false if node == nil

    if ( node.left == nil or node.right == nil )
      if node.left == nil
        if direction == -1
          parent_node.set_left( node.right )
        elsif direction == 1
          parent_node.set_left( node.right )
        elsif direction == 0
          @root = node.rigth
        end
      else
        if direction == -1
          parent_node.set_left( node.left )
        elsif direction == 1
          parent_node.set_right( node.left )
        elsif direction == 0
          @root = node.left
        end
      end
    else
      left_biggest = node.left
      parent_node = node
      direction = -1
      while left_biggest.right != nil
        parent_node = left_biggest
        left_biggest = left_biggest.right
        direction = -1
      end

      node.set_value( left_biggest.value )

    end
  end
=end


end
