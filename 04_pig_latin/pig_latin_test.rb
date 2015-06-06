=begin
def translate(s)
	s_array = s.split('')
	vowels = ['a','e','i','o','u']
	print s_array.join('') + "ay"
end
translate("apple")
puts ""

def translate_b(s)
	s_array = s.split('')
	cons = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	if (cons.include?(s_array[0]))
		#print "banana"
		s_array_rotate = s_array.rotate
		print s_array_rotate.join('') + "ay"
	else
		print "no"
	end
end
translate_b("banana")
puts ""

def translate_ch(s)
	s_array = s.split('')
	cons = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	if(cons.include?(s_array[0] && s_array[1]))
		s_array_rotate = s_array.rotate(2)
		print s_array_rotate.join('') + "ay"
	else
		print "No"
	end
end
translate_ch("cherry")
puts ""

def translate_thr(s)
	s_array = s.split('')
	cons = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z']
	if(cons.include?(s_array[0] && s_array[1] && s_array[2]))
		s_array_rotate = s_array.rotate(3)
		print s_array_rotate.join('') + "ay"
	else
		print "No"
	end
end
translate_thr("three")
puts ""

def translate_two_words(s)
	s_array = s.split(' ')
	word_one = s_array[0].split('')
	word_two = s_array[1].split('')
	word_one_rot = word_one
	word_two_rot = word_two.rotate(1)
	print word_one_rot.join('') + "ay" + " " + word_two_rot.join('') + "ay"

end
translate_two_words("eat pie")
puts ""

def translate_qu(s)
	s_array = s.split('')
	if(s_array[0]=='q' && s_array[1]=='u')
		s_array_rotate = s_array.rotate(2)
		print s_array_rotate.join('') + "ay"
	end
end
translate_qu("queen")
puts ""

def translate_many_words(s)
	s_array = s.split(' ')
	if(s_array.count > 1)
		s_array.each {|w| print w.split('').rotate(2).join('') + "ay" + " " }
	else
		print "No"
	end
end
translate_many_words("the quick brown fox")
=end

def translate(string)
	words = string.split(' ')
	words.map! do |word|
		if word.include?('q')
			puts word.index('q')
			x = word.split('')
			x = x.rotate(word.index('q') + 2)
			x = x.join('') + 'ay'
			puts x.to_s
		else
			print "no"			
		end
	end

end	
translate("square")



