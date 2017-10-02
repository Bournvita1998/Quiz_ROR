require 'test_helper'

class StartQuizControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get start_quiz_index_url
    assert_response :success
  end

end
