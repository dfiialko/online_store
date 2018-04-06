require 'test_helper'

class RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up_params" do
    get registration_sign_up_params_url
    assert_response :success
  end

  test "should get account_update_params" do
    get registration_account_update_params_url
    assert_response :success
  end

end
