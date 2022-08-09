require "application_system_test_case"

class ShorteningsTest < ApplicationSystemTestCase
  setup do
    @shortening = shortenings(:one)
  end

  test "visiting the index" do
    visit shortenings_url
    assert_selector "h1", text: "Shortenings"
  end

  test "should create shortening" do
    visit shortenings_url
    click_on "New shortening"

    fill_in "Key", with: @shortening.key
    fill_in "Url", with: @shortening.url
    click_on "Create Shortening"

    assert_text "Shortening was successfully created"
    click_on "Back"
  end

  test "should update Shortening" do
    visit shortening_url(@shortening)
    click_on "Edit this shortening", match: :first

    fill_in "Key", with: @shortening.key
    fill_in "Url", with: @shortening.url
    click_on "Update Shortening"

    assert_text "Shortening was successfully updated"
    click_on "Back"
  end

  test "should destroy Shortening" do
    visit shortening_url(@shortening)
    click_on "Destroy this shortening", match: :first

    assert_text "Shortening was successfully destroyed"
  end
end
