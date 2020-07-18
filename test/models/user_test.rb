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
    User.create(name: '久保山 山本')
    User.create(name: '爸爸')
    User.create(name: 'なつめ')
    User.create(name: 'さやか')

    User.reindex

    result = User.search('hello', fields: [:name])
    assert_equal ['hello'], result.pluck('name')

    result = User.search('爸爸', fields: [:name])
    assert_equal ['爸爸'], result.pluck('name')

    result = User.search('さやか', fields: [:name])
    assert_equal ['さやか'], result.pluck('name')

    result = User.search('なつめ', fields: [:name])
    assert_equal ['なつめ'], result.pluck('name')
  end
end
