def translate(string)
  vowels = ['a','e','i','o','u']
  cons = ('a'..'z').to_a - vowels
  words = string.split(' ')
  words.map! do |word|
    if vowels.include?(word[0])
      x = word + 'ay'

    elsif word.include?('q')
      x = word.split('')
      x = x.rotate(word.index('q') + 2)
      x = x.join('') + 'ay'

    elsif cons.include?(word[0] && word[1])
      x = word.split('')
      if cons.include?(word[0] && word[1] && word[2])
        x_rot = x.rotate(3)
      else
        x_rot = x.rotate(2)
      end      
      x_rot = x_rot.join('') + 'ay'

    elsif cons.include?(word[0])
      x = word.split('')
      x = x.rotate
      x = x.join('') + 'ay'
    end    
  end
  words.join(' ')
end