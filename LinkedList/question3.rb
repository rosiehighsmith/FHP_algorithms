require_relative 'lib/q3.rb'

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

if QuestionThree.floyd(node1)
  puts "Loop found"
else
  puts "No loop found"
end

