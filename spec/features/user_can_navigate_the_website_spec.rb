require_relative "../rails_helper"

describe 'user can navigate the website' do
  context 'regular user' do

    it "won't break when I click all the buttons" do

      location = Location.create(name: "Christ Body Ministries",
      address: "850 Lincoln Street Denver, CO 80203")

      visit '/'

      expect(page).to have_content("Welcome")

      click_link("Contact")

      expect(current_path).to eq('/contact')

      click_link("MealFinder")

      click_link_or_button("Register a Number")

      expect(current_path).to eq('/numbers/new')

      visit '/'

      click_link_or_button("Partners")

      expect(page).to have_content("Coming Soon")

      click_link_or_button("MealFinder")

      expect(current_path).to eq('/')

      click_link_or_button("View Meal Locations")

      expect(current_path).to eq('/locations')

      click_link_or_button("More Info")

      expect(page).to have_content("Christ Body Ministries")

    end
  end

  context 'admin person' do

    it "lets the admin do admin things" do

      User.create(username: "Max Millington", email: "MaxMillington89@gmail.com", password: "password")

      visit '/'

      click_link_or_button("Admin Dashboard")

      fill_in "Username", with: "Max Millington"
      fill_in "Email", with: "MaxMillington89@gmail.com"
      fill_in "Password", with: "chuck"

      click_link_or_button "Login"

      expect(current_path).to eq('/login')

      fill_in "Username", with: "Max Millington"
      fill_in "Email", with: "MaxMillington89@gmail.com"
      fill_in "Password", with: "password"

      click_link_or_button "Login"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Add a Location"

      expect(current_path).to eq('/locations/new')

      fill_in "Name", with: ""
      fill_in "Address", with: "1510 Blake Street, Denver, CO"

      click_link_or_button "Create Location"

      expect(current_path).to eq('/locations')

      fill_in "Name", with: "Steve"
      fill_in "Address", with: "1510 Blake Street, Denver, CO"

      click_link_or_button "Create Location"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Edit"

      click_link_or_button "Update Location"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Delete"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Admin Dashboard"

      click_link_or_button "Logout"

    end

    it "lets the admin delete numbers" do

      User.create(username: "Max Millington", email: "MaxMillington89@gmail.com", password: "password")

      Number.create(phone_number: "555-555-5555")

      visit '/'

      click_link_or_button("Admin Dashboard")

      fill_in "Username", with: "Max Millington"
      fill_in "Email", with: "MaxMillington89@gmail.com"
      fill_in "Password", with: "password"

      click_link_or_button "Login"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Delete"

      expect(current_path).to eq('/admin/dashboard')

      click_link_or_button "Logout"

    end
  end

end
