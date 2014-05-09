require_relative 'Problem17'

describe Counter do
  let(:counter){ Counter.new }

  describe Counter::Number do
    let(:number){ Counter::Number.new(3)}
    context 'convert' do

      it 'returns word for number under ten' do
        three = Counter::Number.new(3)
        nine = Counter::Number.new(9)

        expect(three.convert).to eq "three"
        expect(nine.convert).to eq "nine"

      end

      it 'returns word for number under twenty' do
        ten = Counter::Number.new(10)
        thirteen = Counter::Number.new(13)

        expect(ten.convert).to eq "ten"
        expect(thirteen.convert).to eq "thirteen"
      end

      it 'returns word for numbers 20-99' do
        twenty = Counter::Number.new(20)
        thirtythree = Counter::Number.new(33)

        expect(twenty.convert).to eq "twenty"
        expect(thirtythree.convert).to eq "thirtythree"
      end

      it 'returns word for 3-digit numbers' do
        test1 = Counter::Number.new(100)
        test2 = Counter::Number.new(209)
        test3 = Counter::Number.new(919)
        test4 = Counter::Number.new(857)

        expect(test1.convert).to eq "onehundred"
        expect(test2.convert).to eq "twohundredandnine"
        expect(test3.convert).to eq "ninehundredandnineteen"
        expect(test4.convert).to eq "eighthundredandfiftyseven"
      end
    end
  end
end