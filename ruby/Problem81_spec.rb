require_relative 'Problem81'

describe Pathfinder do 
  let(:input){ File.readlines "problem81_test.txt" }
  let(:pf){ Pathfinder.new input }
  let(:input2){ File.readlines "input81.txt" }
  let(:pf2) { Pathfinder.new input2 }

  context 'initialize' do
    it 'creates array of arays' do
      expect(pf.lines.first.first).to eq 131
      expect(pf.lines.first.last).to eq 18
      expect(pf.lines.last.last).to eq 331
      expect(pf2.lines.first.first).to eq 1
      expect(pf2.lines.last.last).to eq 9
    end
  end

  context 'min_path' do
    it 'sets the min path from given coords' do
      i = pf.lines.length - 1
      j = pf.lines.first.length - 1
      pf.min_path
      left = pf.lines[i][j-1]
      up = pf.lines[i-1][j]
      min = pf.lines[0][0]
      expect(left).to eq 368
      expect(up).to eq 1287
      expect(min).to eq 2427
    end
  end
end
