class CeaserCipher
  def encode(message, cipher_number)
    alphabet = ("a".."z").to_a # created an array of the alphabets so later it knows what the next alphabt to cipher into is
    encoded_word = ""
    message.each_char {|letter|
      if alphabet.include?(letter)
        current_position = alphabet.index(letter) # pulled out the position of the letter from the alphabets
        offset_position = current_position + cipher_number - alphabet.size# once we know its position (which is an index number) we add it to the cipher number the user enters
        encoded_letter = alphabet[offset_position]# returns the letter in the alphabets its been offset to
        encoded_word = encoded_word + encoded_letter
      else
        encoded_word =  encoded_word + letter
      end
    }
    encoded_word
  end
end
