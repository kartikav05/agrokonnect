require "application_system_test_case"

class ToolsTest < ApplicationSystemTestCase
  setup do
    @tool = tools(:one)
  end

  test "visiting the index" do
    visit tools_url
    assert_selector "h1", text: "Tools"
  end

  test "should create tool" do
    visit tools_url
    click_on "New tool"

    fill_in "Cost", with: @tool.cost
    fill_in "Fromdate", with: @tool.fromdate
    fill_in "No tools", with: @tool.no_tools
    fill_in "Todate", with: @tool.todate
    fill_in "Toolname", with: @tool.toolname
    fill_in "User", with: @tool.user_id
    click_on "Create Tool"

    assert_text "Tool was successfully created"
    click_on "Back"
  end

  test "should update Tool" do
    visit tool_url(@tool)
    click_on "Edit this tool", match: :first

    fill_in "Cost", with: @tool.cost
    fill_in "Fromdate", with: @tool.fromdate
    fill_in "No tools", with: @tool.no_tools
    fill_in "Todate", with: @tool.todate
    fill_in "Toolname", with: @tool.toolname
    fill_in "User", with: @tool.user_id
    click_on "Update Tool"

    assert_text "Tool was successfully updated"
    click_on "Back"
  end

  test "should destroy Tool" do
    visit tool_url(@tool)
    click_on "Destroy this tool", match: :first

    assert_text "Tool was successfully destroyed"
  end
end
