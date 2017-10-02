require 'test_helper'

class HollywoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hollywood = hollywoods(:one)
  end

  test "should get index" do
    get hollywoods_url
    assert_response :success
  end

  test "should get new" do
    get new_hollywood_url
    assert_response :success
  end

  test "should create hollywood" do
    assert_difference('Hollywood.count') do
      post hollywoods_url, params: { hollywood: { Q_type: @hollywood.Q_type, Ques: @hollywood.Ques, ans: @hollywood.ans, opt1: @hollywood.opt1, opt2: @hollywood.opt2, opt3: @hollywood.opt3, opt4: @hollywood.opt4 } }
    end

    assert_redirected_to hollywood_url(Hollywood.last)
  end

  test "should show hollywood" do
    get hollywood_url(@hollywood)
    assert_response :success
  end

  test "should get edit" do
    get edit_hollywood_url(@hollywood)
    assert_response :success
  end

  test "should update hollywood" do
    patch hollywood_url(@hollywood), params: { hollywood: { Q_type: @hollywood.Q_type, Ques: @hollywood.Ques, ans: @hollywood.ans, opt1: @hollywood.opt1, opt2: @hollywood.opt2, opt3: @hollywood.opt3, opt4: @hollywood.opt4 } }
    assert_redirected_to hollywood_url(@hollywood)
  end

  test "should destroy hollywood" do
    assert_difference('Hollywood.count', -1) do
      delete hollywood_url(@hollywood)
    end

    assert_redirected_to hollywoods_url
  end
end
