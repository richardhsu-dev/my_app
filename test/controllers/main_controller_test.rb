require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get action1" do
    get main_action1_url
    assert_response :success
  end

  test "should get action2" do
    get main_action2_url
    assert_response :success
  end

end
