require 'test_helper'

class WouldsControllerTest < ActionController::TestCase
  setup do
    @would = woulds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:woulds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create would" do
    assert_difference('Would.count') do
      post :create, would: { answer: @would.answer, question: @would.question }
    end

    assert_redirected_to would_path(assigns(:would))
  end

  test "should show would" do
    get :show, id: @would
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @would
    assert_response :success
  end

  test "should update would" do
    put :update, id: @would, would: { answer: @would.answer, question: @would.question }
    assert_redirected_to would_path(assigns(:would))
  end

  test "should destroy would" do
    assert_difference('Would.count', -1) do
      delete :destroy, id: @would
    end

    assert_redirected_to woulds_path
  end
end
