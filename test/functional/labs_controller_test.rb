require 'test_helper'

class LabsControllerTest < ActionController::TestCase
  setup do
    @lab = labs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab" do
    assert_difference('Lab.count') do
      post :create, lab: { description: @lab.description, name: @lab.name }
    end

    assert_redirected_to lab_path(assigns(:lab))
  end

  test "should show lab" do
    get :show, id: @lab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab
    assert_response :success
  end

  test "should update lab" do
    put :update, id: @lab, lab: { description: @lab.description, name: @lab.name }
    assert_redirected_to lab_path(assigns(:lab))
  end

  test "should destroy lab" do
    assert_difference('Lab.count', -1) do
      delete :destroy, id: @lab
    end

    assert_redirected_to labs_path
  end
end
