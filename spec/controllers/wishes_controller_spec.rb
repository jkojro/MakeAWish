require 'rails_helper'

RSpec.describe WishesController, type: :controller do

  describe 'not signed user' do
      it 'returns http success' do
        get :index
        expect(response).to redirect_to(controller: 'devise/sessions',
                                      action: 'new')
      end
  end
end
