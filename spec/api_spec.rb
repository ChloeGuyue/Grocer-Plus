require 'rails_helper'
describe UsersController do
    describe 'searching Spoonacular API' do
        it "calls the model method that performs spoonacular search" do
            expect(Recipe).to receive(:find_in_api).with(2000, 'week')
            get 'show'
        end
        it 'selects the show template for rendering' do
            @fake_results = [instance_double('Recipe')]
            allow('Recipe').to receive(:find_in_api).and_return(@fake_results)
            post 'search_api', {:search_parameters => 'food'}
            expect(assigns(:recipes)).to eq(@fake_results)
        end

        #it 'makes the api search results available to that template'
    end
  end
