require "rails_helper"

RSpec.describe ItemsController, :type => :controller do
    login_user
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show" do
            let!(:item) { Item.create(title: "Test title", description: "Test description", color: "color", size: "M", clothingType: "clothes", price: "5") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show 2" do
            let!(:item) { Item.create(title: "Test title", description: "Test description", color: "color", size: "M", clothingType: "clothes", price: "5") }
            it "returns a success response" do
                get :show, params: {id: item }
                expect(response).to be_successful
            end
        end
    end
end
