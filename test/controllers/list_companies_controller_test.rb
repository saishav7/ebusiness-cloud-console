require 'test_helper'

class ListCompaniesControllerTest < ActionController::TestCase
  test "should get viewCompanyList" do
    get :viewCompanyList
    assert_response :success
  end

end
