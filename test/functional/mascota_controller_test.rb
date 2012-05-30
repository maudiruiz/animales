require 'test_helper'

class MascotaControllerTest < ActionController::TestCase
  setup do
    @mascotum = mascota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mascota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mascotum" do
    assert_difference('Mascotum.count') do
      post :create, mascotum: @mascotum.attributes
    end

    assert_redirected_to mascotum_path(assigns(:mascotum))
  end

  test "should show mascotum" do
    get :show, id: @mascotum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mascotum.to_param
    assert_response :success
  end

  test "should update mascotum" do
    put :update, id: @mascotum.to_param, mascotum: @mascotum.attributes
    assert_redirected_to mascotum_path(assigns(:mascotum))
  end

  test "should destroy mascotum" do
    assert_difference('Mascotum.count', -1) do
      delete :destroy, id: @mascotum.to_param
    end

    assert_redirected_to mascota_path
  end
end
