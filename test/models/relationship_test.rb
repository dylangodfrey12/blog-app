require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should follow and unfollow a user" do
    michael = users(:michael)
    archer  = users(:sterling)
    assert_not michael.following?(archer)
    michael.follow(archer)
    assert archer.followers.include?(michael)

    assert michael.following?(archer)
    michael.unfollow(archer)
    assert_not michael.following?(archer)
  end
end
