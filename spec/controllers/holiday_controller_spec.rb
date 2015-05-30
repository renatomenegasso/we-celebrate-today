require 'rails_helper'

describe HolidayController do
  fixtures :holiday

  describe 'GET #show' do
    it 'return a success response' do
      get :show, id: Holiday.first.id
      expect(response).to be_success
    end

    it 'assigns @holiday to view' do
      get :show, id: Holiday.first.id
      expect(assigns(:holiday)).to eq Holiday.first
    end
  end
end
