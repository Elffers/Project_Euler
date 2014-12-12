require_relative 'Problem92'

describe '#square digits' do
  it 'returns the sum of the square of the digits' do
    expect(square_digits 44).to eq 32
    expect(square_digits 32).to eq 13
    expect(square_digits 85).to eq 89
  end
end
