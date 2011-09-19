require 'test_helper'

class TextPastesControllerTest < ActionController::TestCase
  setup do
    @text_paste = text_pastes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_pastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_paste" do
    assert_difference('TextPaste.count') do
      post :create, :text_paste => @text_paste.attributes
    end

    assert_redirected_to text_paste_path(assigns(:text_paste))
  end

  test "should show text_paste" do
    get :show, :id => @text_paste.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @text_paste.to_param
    assert_response :success
  end

  test "should update text_paste" do
    put :update, :id => @text_paste.to_param, :text_paste => @text_paste.attributes
    assert_redirected_to text_paste_path(assigns(:text_paste))
  end

  test "should destroy text_paste" do
    assert_difference('TextPaste.count', -1) do
      delete :destroy, :id => @text_paste.to_param
    end

    assert_redirected_to text_pastes_path
  end
end
