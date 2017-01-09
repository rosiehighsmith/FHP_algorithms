def longest_collatz_seq
  longest_seq = []
  (1..1000).each do |array|
    current_seq = [array]
    until current_seq.last == 1
      if current_seq.last.even?
        current_seq << current_seq.last/2
      else
        current_seq << 3 * current_seq.last + 1
      end
    end
    longest_seq = current_seq if current_seq.length > longest_seq.length
  end
  longest_seq.length
end

print longest_collatz_seq