MORSE_CODE = {
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
}.freeze

def decode_char(code)
  MORSE_CODE[code]
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode(morse_message)
  morse_words = morse_message.split('   ')
  decoded_words = morse_words.map { |morse_word| decode_word(morse_word) }
  decoded_words.join(' ')
end


decode('.... . -.--   .--- ..- -.. .')
