require 'test_helper'

class HopesShirtControllerTest < ActionDispatch::IntegrationTest
  test "should get select_shirt" do
    get hopes_shirt_select_shirt_url
    assert_response :success
  end

end
