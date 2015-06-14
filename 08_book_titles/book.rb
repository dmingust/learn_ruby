class Book
#	attr_reader :title # shortcut for getter methods
#	attr_writer :title # shortcut for setter methods

#	attr_accessor :title #shortcut for setter and getter methods

#	def initialize(title)
#		@title = title
#	end

	def title=(new_title)
		@title = titleize(new_title)
	end

	def title
		@title
	end	
	
end

def titleize(title)
	title.capitalize!
	words = title.split(' ')
	exceptions = ['a', 'an', 'the', 'and', 'in', 'of']
	words.map! do |word|
		if exceptions.include?(word)
			word.downcase
		else
			word.capitalize
		end
	end
	words.join(' ')
end