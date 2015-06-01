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

  describe '#save' do
    subject do
      Holiday.create(day: 7, month: 9, description: 'Dia da música')
    end

    it 'fills slug field properly' do
      expect(subject.slug).to eq 'dia-da-musica'
    end

    context 'with existen slug' do
      let(:original_slug) { 'another-slug' }

      subject do
        Holiday.create(day: 7, month: 9, description: 'Dia da madeira', slug: original_slug)
      end

      it 'not change original slug' do
        expect(subject.slug).to eq original_slug
      end
    end
  end
end
