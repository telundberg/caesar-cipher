
def word_to_alphabet_index(word)
  alphabet = ('A'..'Z').to_a
  array = Array.new
  split_word = word.chars
  split_word.each do |char|
    a = alphabet.index(char)
    array << a
  end
  return array
end

def cipher_math(array, encrypt = true)
  ciphered_array = Array.new
  array.each do |item|
    if encrypt
      shift = 3
    else
      shift = -3
    end
    new_item = (shift + item) % 26
    ciphered_array << new_item
  end
  return ciphered_array
end

def indices_to_letters(indices)
  alphabet = ('A'..'Z').to_a
  array = Array.new
  index_array = indices.to_a
  index_array.each do |index|
    a = alphabet.fetch(index)
    array << a
  end
  return array.join
end

def caesar_cipher_encrypt(string)
  string_array = Array.new
  split_string = string.split(' ')
  split_string.each do |index|
    good = indices_to_letters(cipher_math(word_to_alphabet_index(index)))
    string_array << good
  end
  return string_array.join(' ')
end

def caesar_cipher_decrypt(string)
  string_array = Array.new
  split_string = string.split(' ')
  split_string.each do |index|
    good = indices_to_letters(cipher_math(word_to_alphabet_index(index),false))
    string_array << good
  end
  return string_array.join(' ')
end
