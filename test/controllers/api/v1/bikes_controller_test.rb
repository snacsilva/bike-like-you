require 'test_helper'

class Api::V1::BikesControllerTest < ActionDispatch::IntegrationTest
  test "should get catch" do
    get api_v1_bikes_catch_url
    assert_response :success
  end

  test "should get give_back" do
    get api_v1_bikes_give_back_url
    assert_response :success
  end

end
