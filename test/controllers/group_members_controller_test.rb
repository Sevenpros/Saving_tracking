require "test_helper"

class GroupMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_member = group_members(:one)
  end

  test "should get index" do
    get group_members_url, as: :json
    assert_response :success
  end

  test "should create group_member" do
    assert_difference("GroupMember.count") do
      post group_members_url, params: { group_member: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show group_member" do
    get group_member_url(@group_member), as: :json
    assert_response :success
  end

  test "should update group_member" do
    patch group_member_url(@group_member), params: { group_member: {  } }, as: :json
    assert_response :success
  end

  test "should destroy group_member" do
    assert_difference("GroupMember.count", -1) do
      delete group_member_url(@group_member), as: :json
    end

    assert_response :no_content
  end
end
