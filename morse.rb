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

  def decode_char(input)
    CODES.each{
        |key,value|
    if value == input
      print key
    end
    }
  end
def decode_word(input)
    mess = input.split(" ")
    mess.push(" ")
    mess.each{|item|
  "#{decode_char(item)} "
    }
end
def decode(input)
    morse = input.split("   ") 
    morse.each{|element|
  "#{decode_word(element)}"
    }
end
decode("-- -.--   -. .- -- .")