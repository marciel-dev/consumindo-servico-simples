require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get main_find_url
    assert_response :success
  end

  test "should get list" do
    get main_list_url
    assert_response :success
  end

end
