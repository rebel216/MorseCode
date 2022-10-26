@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(code)
    @words = code.split
    decode_words(@words)   
end

def decode_words(words)
    print ' '
    @words.each do |word|
        @current_words = word.split
        decode_sentence(@current_word) 
        print ' '     
    end
    
end

def decode_sentence(current_words)
    @current_words.each do |current_word|
        @current_letter = @dictionary[current_word]
        print "#{@current_letter.downcase}"
    end
    
end


decode_char('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')