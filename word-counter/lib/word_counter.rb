module WordCounter

	def self.count(string)
    return nil if string.nil? or string == ""
    string.downcase.gsub!(/[^a-z0-9\s"\'"\-]/i, '')
    result = string if string.split == string
    result = string.split.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
	end

end