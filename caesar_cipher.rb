def caesar_cipher (phrase, shift)
  new_word =""
  phrase.each_char do |char|
    char = char.ord
    
    if char >= 65 && char <= 90
      char = char + shift
      if char > 90 && char <97
        char = char - 26
      end
    
    elsif char >= 97 && char <= 122
      char = char + shift
    
    
    
    end
    char = char.chr
    new_word = new_word + char
    
    
    
  end
  return new_word
  
end

p caesar_cipher("What a string!",3)