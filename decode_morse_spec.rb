@morse_map = {
  '.-' => 'a',
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

def decode_char(char)
  @single_char = @morse_map[char]
  @single_char
end

def decode_word(word)
  @one_word = word.split
  @current_word = ''
  @one_word.each do |chars|
    decode_char(chars)
    @current_word += decode_char(chars).upcase
  end
  print " #{@current_word}"
end

def decode_message(message)
  @many_words = message.split('   ')
  @many_words.each do |word|
    @final = decode_word(word)
  end
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
