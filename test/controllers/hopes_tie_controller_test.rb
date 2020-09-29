require 'test_helper'

class HopesTieControllerTest < ActionDispatch::IntegrationTest
  test "should get select_tie" do
    get hopes_tie_select_tie_url
    assert_response :success
  end

  test "should get create" do
    get hopes_tie_create_url
    assert_response :success
  end

end
