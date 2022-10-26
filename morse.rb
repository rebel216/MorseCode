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
  print "\n"
end

def decode_words(words)
  @words.each do |word|
    @current_words = word.split
    decode_sentence(@current_word)
  end
end

def decode_sentence(current_word)
  @current_words.each do |current_word|
    @current_letter = @dictionary[current_word]
    print @current_letter.downcase.to_s
  end
end

decode_char('-- -.--   -. .- -- .')

decode_char('.-  .-..  .  -..-  .-  -.  -..  .  .-.     ..  ...     ...  ..  -.-.  -.-')

decode_char('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
