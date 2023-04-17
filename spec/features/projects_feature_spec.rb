require "rails_helper"

RSpec.feature "Items", type: :feature do
    context "create" do
        it "should succeed" do
            visit 'http://localhost:3000/items/new'
            fill_in "Description", with: "New description content"
            fill_in "Title", with: "New title content"
            click_button "Update Project"
            expect(page).to have_content("Item was successfully created")
        end
    end

    context "Update project" do
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
end
