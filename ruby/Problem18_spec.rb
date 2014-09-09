require_relative 'Problem18'

describe Pathfinder do

  let(:input){ File.readlines("Problem18_test.txt") }
  let!(:pathfinder){ Pathfinder.new input }

  context 'initialize' do
    it 'sets array of arrays' do
      expect(pathfinder.lines.last).to eq [3]
      expect(pathfinder.lines.first).to eq [2, 5, 9, 3]
    end
  end

  context 'map_max' do
    it 'maps each line to the max sum' do
      index = 1
      line = pathfinder.lines[index]
      expect(pathfinder.map_max line, index).to eq [10, 13, 15]
    end

  end

  context 'max_path' do
    xit 'returns max' do
      expect(pathfinder.max_path).to eq 22
    end
  end

end
