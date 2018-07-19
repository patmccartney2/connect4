require 'minitest/pride'
require 'minitest/autorun'
require 'pry'
require './lib/game_board'
require './lib/piece'
require './lib/user'

class UserTest < MiniTest::Test

  def test_user_existence
    user = User.new
    assert_instance_of User, user
  end

  def test_user_attributes
    user = User.new
    result = user.moves_taken
    expected = []
    assert_equal expected, result
  end

end
