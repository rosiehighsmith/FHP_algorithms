require_relative 'lib/q1.rb'

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

LinkedListNode.print_values(node3)

puts "-------"

revlist = QuestionOne.reverse_list(node3)
LinkedListNode.print_values(revlist)

