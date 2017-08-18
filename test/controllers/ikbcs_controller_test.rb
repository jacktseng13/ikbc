require 'test_helper'

class IkbcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ikbc = ikbcs(:one)
  end

  test "should get index" do
    get ikbcs_url
    assert_response :success
  end

  test "should get new" do
    get new_ikbc_url
    assert_response :success
  end

  test "should create ikbc" do
    assert_difference('Ikbc.count') do
      post ikbcs_url, params: { ikbc: { keybord: @ikbc.keybord, mouse: @ikbc.mouse } }
    end

    assert_redirected_to ikbc_url(Ikbc.last)
  end

  test "should show ikbc" do
    get ikbc_url(@ikbc)
    assert_response :success
  end

  test "should get edit" do
    get edit_ikbc_url(@ikbc)
    assert_response :success
  end

  test "should update ikbc" do
    patch ikbc_url(@ikbc), params: { ikbc: { keybord: @ikbc.keybord, mouse: @ikbc.mouse } }
    assert_redirected_to ikbc_url(@ikbc)
  end

  test "should destroy ikbc" do
    assert_difference('Ikbc.count', -1) do
      delete ikbc_url(@ikbc)
    end

    assert_redirected_to ikbcs_url
  end
end
