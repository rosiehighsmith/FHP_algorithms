def longest_collatz_sequence
  longest_sequence = []
  (1..1000000).each do |array|
    current_sequence = [array]
    until current_sequence.last == 1
      if current_sequence.last.even?
        current_sequence << current_sequence.last/2
      else
        current_sequence << (3 * current_sequence.last + 1)
      end
    end
    longest_sequence = current_sequence if current_sequence.length > longest_sequence.length
  end
  longest_sequence.length
end

print longest_collatz_sequence
