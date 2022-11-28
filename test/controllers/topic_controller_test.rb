require "test_helper"

class TopicControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get topic_show_url
    assert_response :success
  end
end
