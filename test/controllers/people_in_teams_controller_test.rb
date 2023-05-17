require "test_helper"

class PeopleInTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @people_in_team = people_in_teams(:one)
  end

  test "should get index" do
    get people_in_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_people_in_team_url
    assert_response :success
  end

  test "should create people_in_team" do
    assert_difference("PeopleInTeam.count") do
      post people_in_teams_url, params: { people_in_team: {  } }
    end

    assert_redirected_to people_in_team_url(PeopleInTeam.last)
  end

  test "should show people_in_team" do
    get people_in_team_url(@people_in_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_people_in_team_url(@people_in_team)
    assert_response :success
  end

  test "should update people_in_team" do
    patch people_in_team_url(@people_in_team), params: { people_in_team: {  } }
    assert_redirected_to people_in_team_url(@people_in_team)
  end

  test "should destroy people_in_team" do
    assert_difference("PeopleInTeam.count", -1) do
      delete people_in_team_url(@people_in_team)
    end

    assert_redirected_to people_in_teams_url
  end
end
