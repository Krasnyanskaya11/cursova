require "application_system_test_case"

class TeamProjectsTest < ApplicationSystemTestCase
  setup do
    @team_project = team_projects(:one)
  end

  test "visiting the index" do
    visit team_projects_url
    assert_selector "h1", text: "Team projects"
  end

  test "should create team project" do
    visit team_projects_url
    click_on "New team project"

    click_on "Create Team project"

    assert_text "Team project was successfully created"
    click_on "Back"
  end

  test "should update Team project" do
    visit team_project_url(@team_project)
    click_on "Edit this team project", match: :first

    click_on "Update Team project"

    assert_text "Team project was successfully updated"
    click_on "Back"
  end

  test "should destroy Team project" do
    visit team_project_url(@team_project)
    click_on "Destroy this team project", match: :first

    assert_text "Team project was successfully destroyed"
  end
end
