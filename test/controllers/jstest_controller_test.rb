require 'test_helper'

class JstestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jstest_index_url
    assert_response :success
  end

end
