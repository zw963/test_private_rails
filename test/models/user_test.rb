# typed: false
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create a new user" do
    assert_equal 0, User.count
    User.create(name: 'billy')
    assert_equal 1, User.count
  end

  test "search user" do
    User.create(name: 'hello')
    User.create(name: 'world')

    User.reindex

    result = User.search('hello', fields: [:name])
    assert_equal ['hello'], result.pluck('name')
  end
end
