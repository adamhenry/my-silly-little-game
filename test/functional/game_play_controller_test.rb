require File.dirname(__FILE__) + '/../test_helper'
require 'game_play_controller'

# Re-raise errors caught by the controller.
class GamePlayController; def rescue_action(e) raise e end; end

class GamePlayControllerTest < Test::Unit::TestCase
  def setup
    @controller = GamePlayController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
