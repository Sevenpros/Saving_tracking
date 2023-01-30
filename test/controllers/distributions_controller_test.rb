require "test_helper"

class DistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution = distributions(:one)
  end

  test "should get index" do
    get distributions_url, as: :json
    assert_response :success
  end

  test "should create distribution" do
    assert_difference("Distribution.count") do
      post distributions_url, params: { distribution: { amount: @distribution.amount } }, as: :json
    end

    assert_response :created
  end

  test "should show distribution" do
    get distribution_url(@distribution), as: :json
    assert_response :success
  end

  test "should update distribution" do
    patch distribution_url(@distribution), params: { distribution: { amount: @distribution.amount } }, as: :json
    assert_response :success
  end

  test "should destroy distribution" do
    assert_difference("Distribution.count", -1) do
      delete distribution_url(@distribution), as: :json
    end

    assert_response :no_content
  end
end
