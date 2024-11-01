require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "should create game" do
    visit games_url
    click_on "New game"

    check "Already played" if @game.already_played
    fill_in "Description", with: @game.description
    fill_in "Max players", with: @game.max_players
    fill_in "Name", with: @game.name
    fill_in "Playing time", with: @game.playing_time
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit game_url(@game)
    click_on "Edit this game", match: :first

    check "Already played" if @game.already_played
    fill_in "Description", with: @game.description
    fill_in "Max players", with: @game.max_players
    fill_in "Name", with: @game.name
    fill_in "Playing time", with: @game.playing_time
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "should destroy Game" do
    visit game_url(@game)
    click_on "Destroy this game", match: :first

    assert_text "Game was successfully destroyed"
  end
end
