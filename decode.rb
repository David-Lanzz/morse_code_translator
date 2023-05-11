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
  message.each do |i|
    message = [i].join.split
    message.push(' ')
    message.each do |k|
      CODES.each do |key, value|
        k = key if value == k
      end
      print k
    end
  end
end

decode_char('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
