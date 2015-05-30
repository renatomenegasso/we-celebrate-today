require 'rails_helper'

describe HolidayController do
  render_views
  fixtures :holiday

  describe 'GET #show' do
    it 'return a success response' do
      get :show, id: Holiday.first.id
      expect(response).to be_success
    end

    it 'assigns @holiday to view' do
      get :show, id: Holiday.first.id
      expect(assigns(:holidays)).to eq [Holiday.first]
    end

    context 'with slug given' do
      let(:holiday) { Holiday.first }

      it 'return a success response' do
        get :show, slug: holiday.slug
        expect(response).to be_success
      end

      it 'assigns @holiday to view' do
        get :show, slug: holiday.slug
        expect(assigns(:holidays)).to eq [holiday]
      end
    end

    context 'with `today` given' do
      let(:holiday) { Holiday.first }

      before do
        Timecop.freeze(2015, holiday.month, holiday.day)
      end

      it 'return a success response' do
        get :show, today: true
        expect(response).to be_success
      end

      it 'assigns @holiday to view' do
        get :show, today: true
        expect(assigns(:holidays)).to eq [holiday]
      end
    end
  end
end
