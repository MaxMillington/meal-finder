describe 'user can navigate the website' do
  context 'regular user' do

    it "won't break when I click all the buttons" do

      visit '/'

      expect(page).to have_content("Welcome")

      click_link("Contact")

      expect(current_path).to eq('/contact')

      click_link("MealFinder")

      click_link_or_button("Register a Number")

      expect(current_path).to eq('/numbers/new')

      fill_in "Phone Number", with: ""

      click_link_or_button("Register")

      expect(current_path).to eq('/numbers')

      fill_in "Phone Number", with: "570-690-0012"

      click_link_or_button("Register")

      expect(current_path).to eq('/')

      click_link_or_button("Partners")

      expect(page).to have_content("Coming Soon")

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

      click_link_or_button "Admin Dashboard"

      click_link_or_button "Logout"

    end
  end
end
