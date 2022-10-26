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
    @words = code.split('   ')
    @words.each do |word|
        @current_words = word.split(' ')
        @current_words.each do |current_word|
            @current_letter = @dictionary[current_word]
            print '#{@current_letter}'
        end
        print ' '
    end
end

# Decode each word
def word_decoder(word)
    @current_word = word.split.map { |letter| letter_decoder(letter) }.join
    '#{@current_word} '
end

# Decode each sentence
def sentence_decoder(sentence)
    @current_sentence = sentence.split('   ').map { |word| word_decoder(word) }.join
    print '#{@current_sentence.downcase} \n'
end

sentence_decoder('-- -.--   -. .- -- .')

sentence_decoder('.-  .-..  .  -..-  .-  -.  -..  .  .-.     ..  ...     ...  ..  -.-.  -.-')

sentence_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')