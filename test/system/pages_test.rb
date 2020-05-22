require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit root_path

    assert_selector "h1", text: "Hamburger Toggler"
  end

  test 'clicking the hamburger/nav' do
    visit root_path
    click_button "🍔"
    assert_selector "nav", class: 'active'
  end

  test 'clicking a second toggler' do
    visit root_path
    # second button
  end
end
