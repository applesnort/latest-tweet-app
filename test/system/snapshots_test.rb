require "application_system_test_case"

class SnapshotsTest < ApplicationSystemTestCase
  test "visiting the root" do
    visit root_url
  
    assert_selector "h1", text: "Latest Tweet Search"
    fill_in "Search:",	with: "britneyspears"
    click_button "Search"
  end
end
