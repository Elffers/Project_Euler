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

  context 'first_days' do
    it 'returns array of 1st day for each month' do
      # ["Monday", "Thursday", "Thursday", "Sunday", "Tuesday", "Friday", "Sunday", "Wednesday", "Saturday", "Monday", "Thursday", "Saturday"]
      expect(year1.first_days).to eq [1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
    end
  end
  describe Year::Month do
    let(:january) { Year::Month.new "January" }
    let(:february) { Year::Month.new "February" }
    let(:march){ Year::Month.new "March" }
    let(:april){ Year::Month.new "April" }
    let(:may){ Year::Month.new "May" }
    let(:june) { Year::Month.new "June" }
    let(:july) { Year::Month.new "July" }
    let(:august) { Year::Month.new "August" }
    let(:september) { Year::Month.new "September" }
    let(:october) { Year::Month.new "October" }
    let(:november) { Year::Month.new "November" }
    let(:december) { Year::Month.new "December" }

    context 'days' do

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

    context 'first_day' do
      xit 'returns day of first day of the month' do
        expect(january.first_day("1900")).to eq "Monday"
        expect(february.first_day("1900")).to eq "Thursday"
        expect(march.first_day("1900")).to eq "Thursday"
        expect(april.first_day("1900")).to eq "Saturday"
        expect(may.first_day("1900")).to eq "Tuesday"
        expect(june.first_day("1900")).to eq "Friday"
      end
    end
  end
end