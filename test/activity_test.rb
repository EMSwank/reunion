require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new("bowling", "Jim", 20)

    assert_instance_of Activity, activity
  end

  def test_it_take_an_activity_type
    activity = Activity.new("bowling", "Jim", 20)

    assert_equal "bowling", activity.activity_type
  end

  def test_it_takes_a_person_and_an_amount
    activity = Activity.new("bowling", "Jim", 20)

    assert_equal ({"Jim"=>20}), activity.person_paid
  end

  def test_it_can_take_multiple_people
    activity1 = Activity.new("bowling", "Jim", 20)
    activity2 = Activity.new("eating", "Dave", 25)

    assert_equal ({"Jim"=>20}), activity1.person_paid
    assert_equal ({"Dave" => 25}), activity2.person_paid
  end

  def test_it_calculates_total_cost
    activity1 = Activity.new("bowling", "Jim", 20)
    activity2 = Activity.new("eating", "Dave", 25)

    assert_equal 45, activity2.total_cost
  end
end
