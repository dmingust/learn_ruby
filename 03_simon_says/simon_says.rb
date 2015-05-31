def echo(string)
	string
end

def shout(string)
	return string.upcase
end

def repeat(string, number = 2)
	new_string = string + " "
	return (new_string * number).chop
end

def start_of_word(string, number)
	return string[0, number]
end

def first_word(my_string)
	string_array = my_string.split(" ")
	return string_array[0]
end

#def titleize(string)
#	string.split(' ').map { |w| w.capitalize }.join(' ')
#end

def titleize(string)
  except = ["and", "the", "over"]
  arr = string.split(' ')

  arr.each { |w|
    w.capitalize! unless except.include?(w)
  }

  arr[0].capitalize!    # always capitalize first word in sentence regardless
  arr.join(' ')
end

# Copied from official solutions
#def titleize(s)
#  words = s.split.map do |word|
#    if %w(the and over).include?(word)
#      word
#    else
#      word.capitalize
#    end
#  end
#  words.first.capitalize!
#  words.join(" ")
#end