require "rails_helper"

RSpec.feature "Items", type: :feature do
    context "create" do
        before(:each) do
            user = FactoryBot.create(:user)
            login_as(user)
            visit new_item_path
          end
      
        it "should succeed" do
            visit 'http://localhost:3000/items/new'
            fill_in "Title", with: "New title content"
            fill_in "Description", with: "New description content"
            click_button "Update Project"
            expect(page).to have_content("Item was successfully created")
        end
    end

    context "Update project" do
        before(:each) do
            user = FactoryBot.create(:user)
            login_as(user)
            visit new_item_path
          end
      
      let(:item) { Item.create(title: "Test title", description: "Test content") }
      before(:each) do
        visit edit_item_path(item)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Project"
        expect(page).to have_content("Item was successfully updated")
      end
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Description can't be blank")
      end

      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Title can't be blank")
      end
    end

    context "Login" do
        scenario "should sign up" do
          visit root_path
          click_link 'Sign up'
          within("form") do
            fill_in "Email", with: "testing@test.com"
            fill_in "Password", with: "123456"
            fill_in "Password confirmation", with: "123456"
            click_button "Sign up"
          end
          expect(page).to have_content("Welcome! You have signed up successfully.")
        end
    
    
        scenario "should log in" do
          user = FactoryBot.create(:user)
          login_as(user)
          visit root_path
          expect(page).to have_content("Logged in")
        end
      end
    
end
