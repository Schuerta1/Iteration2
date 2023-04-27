require "rails_helper"

RSpec.feature "Items", type: :feature do

  context "Home" do
    it "visiting the index" do
      visit items_url
      assert_selector "h1", text: "Items"
    end
  end

  context "create Item" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    it "Should Succeed" do
      visit items_url
      click_on "New Item"

      fill_in "Clothingtype", with: "New title content"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "New title content"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      assert_text "Item was successfully created"
    end
  end

  context "create Item" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    it "Should Succeed" do
      visit items_url
      click_on "New Item"

      fill_in "Clothingtype", with: "New title content"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "New title content"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"
      click_on "Back"
      click_on "Destroy", match: :first
  
      assert_text "Item was successfully destroyed"
    end
  end

  context "Update Item" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should succeed" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "New title content"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      assert_text "Item was successfully updated"
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: ""
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Description can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: ""
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: ""
      click_on "Update Project"

      expect(page).to have_content("Title can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: ""
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Description can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: ""
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "gdf"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Clothingtype can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: ""
      fill_in "Description", with: "xxx"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Color can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "xxx"
      fill_in "Price", with: "2.5"
      fill_in "Size", with: ""
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Size can't be blank")
    end
  end

  context "Update project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_item_path
    end

    let(:item) { Item.create(title: "Test title", description: "Test content", color: "color", size: "M", clothingType: "clothes", price: "5") }
    before(:each) do
      visit edit_item_path(item)
    end
      
    it "should fail" do
      fill_in "Clothingtype", with: "xxx"
      fill_in "Color", with: "New title content"
      fill_in "Description", with: "xxx"
      fill_in "Price", with: ""
      fill_in "Size", with: "M"
      fill_in "Title", with: "New title content"
      click_on "Update Project"

      expect(page).to have_content("Price can't be blank")
    end
  end

  context "Login" do
      scenario "should sign up" do
        visit root_path
        click_link 'Sign up'
          fill_in "Email", with: "testing@test.com"
          fill_in "Password", with: "123456"
          fill_in "Password confirmation", with: "123456"
          click_button "Sign up"
        expect(page).to have_content("Welcome! You have signed up successfully.")
      end
    end
    
end
