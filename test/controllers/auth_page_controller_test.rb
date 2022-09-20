require "test_helper"

class AuthPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_page_index_url
    assert_response :success
  end
end
