require_relative 'stack.rb'

module QuestionOne
  def reverse_list(list)
    return nil if list.nil?
    @stack = Stack.new 

    while list
      @stack.push list
      list = list.next_node
    end

    head = nil
    current = nil
    loop do
      node = @stack.pop
      break if node.nil?

      if head.nil?
        head = node
        current = node
      else
        current.next_node = node
        current = node
      end
    end
    current.next_node = nil
    return head
  end
  extend self
end
