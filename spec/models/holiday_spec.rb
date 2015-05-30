require 'rails_helper'

describe Holiday do
  describe '#to_s' do
    subject do
      Holiday.new(day: 7, month: 9, description: 'Independencia do Brasil')
    end

    it 'render into proper format' do
      expected = "#{subject.day}/#{subject.month} #{subject.description}"
      expect(subject.to_s).to eq(expected)
    end
  end
end
