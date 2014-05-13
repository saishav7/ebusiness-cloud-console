require 'test_helper'

class CompanyDetailsControllerTest < ActionController::TestCase
  test "should get viewCompanyDetails" do
    get :viewCompanyDetails
    assert_response :success
  end

end
