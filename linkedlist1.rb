class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

# step 1: @data = nil                                       list.value = 12
# step 2: @data = 12 --> nil                                list.value = 99
# step 3: @data = 99 --> 12 --> nil                         list.value = 37
# step 4: @data = 37 --> 99 --> 12 --> nil                  list.value = nil
# final: @data = LinkedListNode.new(37, LinkedListNode.new(99, LinkListNode.new(12,nil)))

class Stack #original LinkedList = 12 --> 99 --> 37 --> nil
  attr_reader :data

  def initialize
      @data = nil
  end
  # Push a value onto the stack
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end
  # Pop an item off the top of the stack.  
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  # def pop
  #   top_node = @data.value
  #   @data = @data.next_node
  #   return top_node
  # end
end

def reverse_list(list)
  stack = Stack.new
  while list
    # add list values starting from the outermost
    stack.push(list.value)
    list = list.next_node
  end
  stack.data
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)