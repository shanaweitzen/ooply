require 'spec_helper'

describe RegistrantsController do 
	describe 'GET new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_success
    end

    it 'saves email to the database' do
      get :new
      expect(assigns[:registrant]).to be
    end
end

describe 'POST create' do
    it 'creates a new registrant' do
      # Setup test:
      # params that go into the controller
      params = {registrant: {"email" => 'shanaweitzen@gmail.com'}}
      # make a fake animal
      mock_registrant = mock_model(Registrant)
      # mock out the .new method
      Registrant.should_receive(:new).with(params[:registrant]).and_return(mock_registrant)
      # mock out the #save method
      mock_registrant.should_receive(:save).and_return(true)

      # do the test!
      post :create, params
    end
  end
