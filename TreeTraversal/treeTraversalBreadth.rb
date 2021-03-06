class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def breadth_first(value)
    queue = Queue.new
    self.children.each { |child| queue.enqueue(child) }
    payload = breadth_traversal(queue, value) until payload == value
    payload
  end

  private

  def breadth_traversal(queue, value)
    current_node = queue.dequeue
    return current_node.payload if current_node.payload == value
    if current_node.children
      current_node.children.each { |current_node_child| queue.enqueue(current_node_child) }
    end
  end
end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end

queue = Queue.new

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)
puts queue.dequeue
queue.enqueue(6)
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue

puts true if 11 == trunk.breadth_first(11)