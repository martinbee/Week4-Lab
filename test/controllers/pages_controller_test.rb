require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get cities" do
    get :cities
    assert_response :success
  end

  test "should get weather" do
    get :weather
    assert_response :success
  end

end
