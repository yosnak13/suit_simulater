require 'test_helper'

class HopesControllerTest < ActionDispatch::IntegrationTest
  test "should get suit" do
    get hopes_suit_url
    assert_response :success
  end

  test "should get shirt" do
    get hopes_shirt_url
    assert_response :success
  end

  test "should get tie" do
    get hopes_tie_url
    assert_response :success
  end

end
