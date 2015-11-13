require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get Show" do
    get :Show
    assert_response :success
  end

  test "should get New" do
    get :New
    assert_response :success
  end

  test "should get Create" do
    get :Create
    assert_response :success
  end

  test "should get Edit" do
    get :Edit
    assert_response :success
  end

  test "should get Update" do
    get :Update
    assert_response :success
  end

  test "should get Destroy" do
    get :Destroy
    assert_response :success
  end

end
