require 'test_helper'

class AdminPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_page_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_page_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_page_new_url
    assert_response :success
  end

end
