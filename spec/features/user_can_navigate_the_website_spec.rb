describe 'user can navigate the website' do
  context 'regular user' do

    # l1 = Location.create(name: "Samaritan House ", address: "2301 Lawrence St, Denver, CO 80205")
    # l2 = Location.create(name: "Denver Rescue Mission", address: "1130 Park Ave W, Denver, CO 80205")

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

      fill_in "Phone Number", with: "570-690-2302"

      click_link_or_button("Register")

      expect(current_path).to eq('/')

    end
  end
end
