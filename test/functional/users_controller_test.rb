require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get currentUser" do
    get :currentUser
    assert_response :success
  end

end
