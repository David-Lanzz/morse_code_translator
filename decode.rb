CODES = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}.freeze
def
 decode_char(input)
  individual_input = input.split('   ')
  message = []
  individual_input.each do |i|
    message.push(i)
  end
  create_message(message)
end

def create_message(message)
  decoded_message = message.map do |word|
    word.split.map { |code| CODES.key(code) }.join
  end
  puts decoded_message.join(' ')
end

decode_char('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
