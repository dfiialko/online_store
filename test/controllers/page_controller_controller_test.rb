require 'test_helper'

class PageControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get contact,about" do
    get page_controller_contact,about_url
    assert_response :success
  end

end
