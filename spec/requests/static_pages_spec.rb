require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Chitter" }

  describe "Home page" do

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

end
