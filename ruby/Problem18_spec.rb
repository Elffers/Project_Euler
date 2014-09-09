require_relative 'Problem18'

describe Pathfinder do

  let(:input){ File.readlines("Problem18_test.txt") }
  let!(:pathfinder){ Pathfinder.new input }

  context 'initialize' do
    it 'sets array of arrays' do
      expect(pathfinder.lines.first).to eq [3]
      expect(pathfinder.lines.last).to eq [8, 5, 9, 3]
    end
  end

  context 'next_max' do
    it 'finds the greater of two numbers in next array' do
      pathfinder.lines.shift
      next_max, index = pathfinder.next_max(3, 0)

      expect(next_max).to eq 7
      expect(index).to eq 0

      pathfinder.lines.shift
      next_max, index = pathfinder.next_max(7, 0)

      expect(next_max).to eq 4
      expect(index).to eq 1

      pathfinder.lines.shift
      next_max, index = pathfinder.next_max(4, 1)

      expect(next_max).to eq 9
      expect(index).to eq 2
    end

  end

  context 'max_path' do
    it 'returns max' do
      expect(pathfinder.max_path).to eq [3, 7, 4, 9]
    end
  end

end
