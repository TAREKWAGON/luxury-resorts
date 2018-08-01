require 'test_helper'

class ResortsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get resorts_home_url
    assert_response :success
  end

  test "should get index" do
    get resorts_index_url
    assert_response :success
  end

  test "should get show" do
    get resorts_show_url
    assert_response :success
  end

end
