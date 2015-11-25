require '../caesar_cipher/spec_helper.rb'
require_relative '../caesar.rb'

describe '#word_to_alphabet_index' do
  it 'returns the alphabetical index of each letter in a word' do
    word = "AM"
    output = [0,12]
    expect(word_to_alphabet_index(word)).to eq output
  end
end

describe '#cipher_math' do
  it 'returns an array of ciphered indices' do
    array = [0,12]
    output = [3,15]
    expect(cipher_math(array)).to eq output
  end
end

describe '#indices_to_letters' do
  it 'returns string of letters(word) when provided with indeces' do
    indices = [0,12]
    output = "AM"
    expect(indices_to_letters(indices)).to eq output
  end
end

describe '#caesar_cipher_encrypt' do
  it 'returns an encrypted string' do
    string = 'I AM IN THE YARD'
    output = 'L DP LQ WKH BDUG'
    expect(caesar_cipher_encrypt(string)).to eq output
  end
end

describe '#caesar_cipher_decrypt' do
  it 'returns a readable string' do
    string = 'L DP LQ WKH BDUG'
    output = 'I AM IN THE YARD'
    expect(caesar_cipher_decrypt(string)).to eq output
  end
end
