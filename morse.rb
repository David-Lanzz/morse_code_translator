# frozen_string_literal: true

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
  Z: '--..',
  " ": ' '
}.freeze

def decode_char(input)
  CODES.each do |key, value|
    print key if value == input
  end
end

def decode_word(input)
  mess = input.split(' ')
  mess.push(' ')
  mess.each do |item|
    decode_char(item)
  end
end

def decode(input)
  morse = input.split('   ')
  morse.each  do |element|
    decode_word(element)
  end
end
decode_char('--')
decode_word('-- -.--')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
