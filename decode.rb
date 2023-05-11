CODES = {
    A: ".-",
    B: "-...",
    C: "-.-.",
    D: "-..",
    E: ".",
    F: "..-.",
    G: "--.",
    H: "....",
    I: "..",
    J: ".---",
    K: "-.-",
    L: ".-..",
    M: "--",
    N: "-.",
    O: "---",
    P: ".--.",
    Q: "--.-",
    R: ".-.",
    S: "...",
    T: "-",
    U: "..-",
    V: "...-",
    W: ".--",
    X: "-..-",
    Y: "-.--",
    Z: "--..",
}
def decode_char(input)
individual_input = input.split('   ')
message = []
individual_input.each{|i|
  message.push(i)
}
message.each{
|i|
str = " "
 message = [i].join('').split(' ')
message.push(" ")
message.each {
    |k|
    CODES.each{
        |key,value|
    if value == k 
       k = key
    end
    }
    print k
}
}
end
decode_char(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")