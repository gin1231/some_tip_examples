require 'test_helper'

class InlineControllerTest < ActionController::TestCase
  test "should get languages" do
    get :languages
    assert_response :success
  end

end
