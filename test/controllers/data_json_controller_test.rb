require 'test_helper'

class DataJsonControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get data_json_home_url
    assert_response :success
  end

end
