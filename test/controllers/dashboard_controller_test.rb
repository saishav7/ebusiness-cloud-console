require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get viewDashboard" do
    get :viewDashboard
    assert_response :success
  end

end
