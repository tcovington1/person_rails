require 'test_helper'

class HumansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get humans_index_url
    assert_response :success
  end

  test "should get show" do
    get humans_show_url
    assert_response :success
  end

  test "should get new" do
    get humans_new_url
    assert_response :success
  end

  test "should get edit" do
    get humans_edit_url
    assert_response :success
  end

end
