require 'spec_helper'

describe "Visit https://www.mysabay.com", :js, :headless, :type => :feature do
  let(:homepage) { "https://www.mysabay.com" }

  before do
    visit(homepage)
  end

  def click_map(map_selector)
    page.find(map_selector).click
  end

  context "when I click Cambodia" do
    let(:username_selector) { "#username" }

    before do
      click_map("#lang-km")
    end

    def assert_login_form!
      expect(page).to have_selector(username_selector)
      username_field = page.find(username_selector)
      expect(username_field[:placeholder]).to eq("ឈ្មោះ​អ្នក​ប្រើប្រាស់")
    end

    it { assert_login_form! }
  end
end
