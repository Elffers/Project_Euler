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
  describe Year::Month do
    context 'days' do
      let(:january) { Year::Month.new "January"}
      let(:february) { Year::Month.new "February"}
      let(:june) { Year::Month.new "June" }

      it 'returns 31 days for right months' do
        expect(january.days(2014)).to eq 31
      end
      it 'returns 30 days for right months' do
        expect(june.days(2014)).to eq 30
      end
      it 'returns 28 days for February in non leap year' do
        expect(february.days(2014)).to eq 28
      end
      it 'returns 29 days for February in non leap year' do
        expect(february.days(2012)).to eq 29
      end
    end
  end
end