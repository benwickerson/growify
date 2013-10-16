require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Growify'" do
      visit '/static_pages/home'
      expect(page).to have_content('Growify')
    end
    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('') 
    end
  end

  describe "Help Page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end

  describe "About" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title('About')
    end
  end

  describe "Contact Us" do

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact Us')
    end
  end
end