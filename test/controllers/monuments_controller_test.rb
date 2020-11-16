require 'test_helper'

class MonumentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monuments_index_url
    assert_response :success
  end

  test "should get show" do
    get monuments_show_url
    assert_response :success
  end

  test "should get new" do
    get monuments_new_url
    assert_response :success
  end

  test "should get create" do
    get monuments_create_url
    assert_response :success
  end

  test "should get edit" do
    get monuments_edit_url
    assert_response :success
  end

  test "should get update" do
    get monuments_update_url
    assert_response :success
  end

end
