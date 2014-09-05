require_relative 'Problem81'


context 'choose_path' do
  it 'chooses correct path' do
    path = choose_path(0,0)
    expect(path).to eq [1096, 1, 0]
  end
  it 'only goes right if at the bottom line' do
    path = choose_path(79, 0)
    expect(path).to eq [5499, 79, 1]
  end
  it 'only goes down if at the end of row' do
    path = choose_path(0, 79)
    expect(path).to eq [9377, 1, 79]
  end
  it 'stops if at last entry' do
    path = choose_path(79, 79)
    expect(path).to eq nil
  end
end
