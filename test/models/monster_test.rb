require "test_helper"

class MonsterTest < ActiveSupport::TestCase
  # height / weight * 100
  test "body monster index" do
    monster = Monster.new(name: "Mario", color: "Darkgray", height: 180, weight: 900)

    assert_equal 20.0, monster.bmi
  end
end
