require_relative 'linked_list_node.rb'

module QuestionThree
	def floyd(list)
		return false if list.nil?
		tortoise = list # they both start at the beginning 
		hare = list

		loop do
			# tortoise moves once
			tortoise = tortoise.next_node
			return false if tortoise.nil?

			# hare moves twice
			hare = hare.next_node
			return false if hare.nil?
			hare = hare.next_node
			return false if hare.nil?

			# if they run into each other, we have a cycle
			return true if tortoise == hare
		end
	end
  extend self
end

