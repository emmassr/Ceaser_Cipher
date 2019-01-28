def caesar_cipher (string, number)
    caesar_string = ""

    string.each_char do |l|
      if ("a".."z").include? (l.downcase) # Identify letters only.
        number.times {l = l.next}
      end
      caesar_string << l[-1]
    end
    caesar_string


  end

  print "Please enter what you need to code:"
  code = gets.chomp

  puts caesar_cipher( code, 5 )
