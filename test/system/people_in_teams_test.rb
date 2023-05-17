require "application_system_test_case"

class PeopleInTeamsTest < ApplicationSystemTestCase
  setup do
    @people_in_team = people_in_teams(:one)
  end

  test "visiting the index" do
    visit people_in_teams_url
    assert_selector "h1", text: "Person in teams"
  end

  test "should create people in team" do
    visit people_in_teams_url
    click_on "New people in team"

    click_on "Create Person in team"

    assert_text "Person in team was successfully created"
    click_on "Back"
  end

  test "should update Person in team" do
    visit people_in_team_url(@people_in_team)
    click_on "Edit this people in team", match: :first

    click_on "Update Person in team"

    assert_text "Person in team was successfully updated"
    click_on "Back"
  end

  test "should destroy Person in team" do
    visit people_in_team_url(@people_in_team)
    click_on "Destroy this people in team", match: :first

    assert_text "Person in team was successfully destroyed"
  end
end
