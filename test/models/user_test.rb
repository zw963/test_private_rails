# typed: false
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create a new user" do
    assert_equal 0, User.count
    User.create(name: 'billy')
    assert_equal 1, User.count
  end
end
