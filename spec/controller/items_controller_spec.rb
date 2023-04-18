require 'rails_helper'

# Change this ItemsController to your project
RSpec.describe ItemsController, type: :controller do

    login_user

    # This should return the minimal set of attributes required to create a valid
    # Item. As you add validations to Item, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Item.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            #expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end

    describe "create project" do
        let!(:item) { Item.create(title: "Test title", description: "Test description") }
        it "returns a success response" do
            expect(response).to have_http_status(:ok)
        end
    end
end