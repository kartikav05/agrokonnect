require "application_system_test_case"

class InfosTest < ApplicationSystemTestCase
  setup do
    @info = infos(:one)
  end

  test "visiting the index" do
    visit infos_url
    assert_selector "h1", text: "Infos"
  end

  test "should create info" do
    visit infos_url
    click_on "New info"

    fill_in "Location", with: @info.location
    fill_in "News", with: @info.news
    fill_in "Title", with: @info.title
    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "should update Info" do
    visit info_url(@info)
    click_on "Edit this info", match: :first

    fill_in "Location", with: @info.location
    fill_in "News", with: @info.news
    fill_in "Title", with: @info.title
    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "should destroy Info" do
    visit info_url(@info)
    click_on "Destroy this info", match: :first

    assert_text "Info was successfully destroyed"
  end
end
