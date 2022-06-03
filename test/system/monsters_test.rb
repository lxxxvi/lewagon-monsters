require "application_system_test_case"

class MonstersTest < ApplicationSystemTestCase
  setup do
    @monster = monsters(:alexander)
  end

  test "show monster works" do
    visit monsters_url

    click_on "Show this monster", match: :first
    assert_selector "h1", text: "Alexander"

    click_on "Back"
    assert_selector "h1", text: "Monsters"
  end

  test "visiting the index" do
    visit monsters_url
    assert_selector "h1", text: "Monsters"
  end

  test "should create monster" do
    visit monsters_url
    click_on "New monster"

    fill_in "Name", with: @monster.name
    fill_in "Color", with: @monster.color
    fill_in "Height", with: @monster.height
    fill_in "Weight", with: @monster.weight
    click_on "Create Monster"

    assert_text "Monster was successfully created"
    click_on "Back"
  end

  test "should update Monster" do
    visit monster_url(@monster)
    click_on "Edit this monster", match: :first

    fill_in "Color", with: @monster.color
    fill_in "Height", with: @monster.height
    fill_in "Name", with: @monster.name
    fill_in "Weight", with: @monster.weight
    click_on "Update Monster"

    assert_text "Monster was successfully updated"
    click_on "Back"
  end

  test "should destroy Monster" do
    visit monster_url(@monster)
    click_on "Destroy this monster", match: :first

    assert_text "Monster was successfully destroyed"
  end
end
