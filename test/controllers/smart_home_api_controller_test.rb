require 'test_helper'

class SmartHomeApiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get expand_graph" do
    get :expand_graph
    assert_response :success
  end

  test "should get expose_graph" do
    get :expose_graph
    assert_response :success
  end

end
