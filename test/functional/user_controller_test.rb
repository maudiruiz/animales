require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get currentUser" do
    get :currentUser
    assert_response :success
  end

end
