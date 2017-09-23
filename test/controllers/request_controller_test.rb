require 'test_helper'

class RequestControllerTest < ActionDispatch::IntegrationTest
  test "should get twilio" do
    get request_twilio_url
    assert_response :success
  end

end
