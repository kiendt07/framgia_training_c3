require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views
  describe 'GET' do
    it 'should get #home' do
      get :home
      expect(response).to be_success
      expect(response.body).to include('<title>Home | Ruby on Rails Tutorial Sample App</title>')
    end

    it 'should get #about' do
      get :about
      expect(response).to be_success
      expect(response.body).to include('<title>About | Ruby on Rails Tutorial Sample App</title>')
    end
  end

  describe 'GET #about' do
    it 'response successfully with HTTP code 200' do
      get :about
      expect(response).to be_success
    end
  end
end
