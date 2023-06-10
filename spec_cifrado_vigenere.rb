require_relative 'cifrado_vigenere'

RSpec.describe '#cifrado_vigenere' do
  it 'debería cifrar el mensaje correctamente' do
    expect(cifrado_vigenere('HELLO', 'KEY')).to eq('RIJVS')
    expect(cifrado_vigenere('GOODBYE', 'SECRET')).to eq('YSQUFRW')
    expect(cifrado_vigenere('ATTACKATDAWN', 'LEMON')).to eq('LXFOPVEFRNHR')
  end
end