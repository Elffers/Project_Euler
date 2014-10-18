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
    it 'returns min sum and coords' do
      i = pf.lines.length - 1
      j = pf.lines.first.length - 1
      output  = pf.min_path(i,j)
      expect(output).to eq [368, 4, 3]
      a = 1
      b = 4
      sum, a, b  = pf.min_path(a,b)
      output = pf.min_path(a,b)
      expect(output).to eq [271, 0, 3]
    end
  end
  
  context 'find_path' do
    it 'finds minimal path' do
      expect(pf.find_path).to eq 2427
      expect(pf2.find_path).to eq 21
    end
  end
end
