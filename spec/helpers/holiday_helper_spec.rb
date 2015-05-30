require 'rails_helper'

describe HolidayHelper do
  describe '#build_date' do
    let(:holiday) { Holiday.new(day: 1, month: 1) }

    it 'build holiday date with current year' do
      expect(helper.build_date(holiday).year).to eq(Date.today.year)
    end

    it 'build holiday date with holiday month' do
      expect(helper.build_date(holiday).month).to eq(holiday.month)
    end

    it 'build holiday date with holiday day' do
      expect(helper.build_date(holiday).day).to eq(holiday.day)
    end
  end
end
