require_relative 'linked_list_node.rb'

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
    if @data.nil?
      @data = LinkedListNode.new(element)
    else
      @data = LinkedListNode.new(element, @data)
    end
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    return nil if @data.nil?
    # get the top of the stack
    top = @data.value
    # @data is now the next one in the list
    @data = @data.next_node
    return top
  end
end
