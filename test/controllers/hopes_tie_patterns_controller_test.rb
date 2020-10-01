require 'test_helper'

class HopesTiePatternsControllerTest < ActionDispatch::IntegrationTest
  test "should get select_tie" do
    get hopes_tie_patterns_select_tie_url
    assert_response :success
  end

end
