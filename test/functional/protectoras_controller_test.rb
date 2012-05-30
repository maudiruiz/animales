require 'test_helper'

class ProtectorasControllerTest < ActionController::TestCase
  setup do
    @protectora = protectoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protectoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create protectora" do
    assert_difference('Protectora.count') do
      post :create, protectora: @protectora.attributes
    end

    assert_redirected_to protectora_path(assigns(:protectora))
  end

  test "should show protectora" do
    get :show, id: @protectora.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @protectora.to_param
    assert_response :success
  end

  test "should update protectora" do
    put :update, id: @protectora.to_param, protectora: @protectora.attributes
    assert_redirected_to protectora_path(assigns(:protectora))
  end

  test "should destroy protectora" do
    assert_difference('Protectora.count', -1) do
      delete :destroy, id: @protectora.to_param
    end

    assert_redirected_to protectoras_path
  end
end
