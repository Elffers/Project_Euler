require_relative 'Problem19'

describe Year do
  let(:leap1)  { Year.new(1904) }
  let(:leap2)  { Year.new(2000) }
  let(:leap3)  { Year.new(1996) }

  let(:year1)  { Year.new(1900) }
  let(:year2)  { Year.new(1997) }
  let(:year3)  { Year.new(1902) }


  context 'leap?' do
    it 'returns true if year is a leap year' do
      expect(leap1.leap?).to eq true
      expect(leap2.leap?).to eq true
      expect(leap3.leap?).to eq true
    end

    it 'returns false if year is not leap year' do
      expect(year1.leap?).to eq false
      expect(year2.leap?).to eq false
      expect(year3.leap?).to eq false
    end
  end
  context 'days_in' do
    it 'returns 366 if leap year' do
      expect(leap1.days_in).to eq 366
    end

    it 'returns 365 if not leap year' do
      expect(year1.days_in).to eq 365
    end
  end
end