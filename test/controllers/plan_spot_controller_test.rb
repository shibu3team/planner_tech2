require 'test_helper'

class PlanSpotControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get plan_spot_new_url
    assert_response :success
  end

  test "should get index" do
    get plan_spot_index_url
    assert_response :success
  end

end
