require "test_helper"

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get countries_index_url
    assert_response :success
  end

  test "should get show" do
    get countries_show_url
    assert_response :success
  end
end
