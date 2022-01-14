require 'test_helper'

class FirstPageControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get first_page_login_url
    assert_response :success
  end

end
