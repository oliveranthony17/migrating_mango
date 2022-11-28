require "test_helper"

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get user_tasks_update_url
    assert_response :success
  end
end
