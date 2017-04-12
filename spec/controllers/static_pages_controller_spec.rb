require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'GET' do
    it 'response successfully with HTTP code 200' do
      get :home
      expect(response).to be_success

      get :help
      expect(response).to be_success
    end
  end

  describe 'GET #about' do
    it 'response successfully with HTTP code 200' do
      get :about
      expect(response).to be_success
    end
  end
end
