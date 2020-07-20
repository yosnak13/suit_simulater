require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get resuit_suit" do
    get results_resuit_suit_url
    assert_response :success
  end

  test "should get result_shirt" do
    get results_result_shirt_url
    assert_response :success
  end

  test "should get result_tie" do
    get results_result_tie_url
    assert_response :success
  end

end
