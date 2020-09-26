require 'test_helper'

class HopeShirtsControllerTest < ActionDispatch::IntegrationTest
  test "should get select_shirt" do
    get hope_shirts_select_shirt_url
    assert_response :success
  end

end
