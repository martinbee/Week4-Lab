require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get post-1" do
    get :post-1
    assert_response :success
  end

  test "should get post-2" do
    get :post-2
    assert_response :success
  end

  test "should get post-3" do
    get :post-3
    assert_response :success
  end

  test "should get post-4" do
    get :post-4
    assert_response :success
  end

end
