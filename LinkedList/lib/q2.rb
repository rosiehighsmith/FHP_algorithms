require_relative 'linked_list_node.rb'

module QuestionTwo # original list 12 -> 99 -> 37 -> nil
	def reverse_list(list, previous=nil)
		current_node = list # sets head of list to 12
		loop do
			break if current_node.nil?

			next_node = current_node.next_node # next_node = 99
			current_node.next_node = previous # points 12 -> nil
			previous = current_node # sets previous to 12
			current_node = next_node # sets current to 99
			# end of 1st iter, nil <- 12, 99 -> 37 | 12=prev, 99=curr
		end
		return previous
	end
  extend self
end

