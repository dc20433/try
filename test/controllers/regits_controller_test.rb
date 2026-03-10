require "test_helper"

class RegitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regit = regits(:one)
  end

  test "should get index" do
    get regits_url
    assert_response :success
  end

  test "should get new" do
    get new_regit_url
    assert_response :success
  end

  test "should create regit" do
    assert_difference("Regit.count") do
      post regits_url, params: { regit: { dob: @regit.dob, gender: @regit.gender, name: @regit.name } }
    end

    assert_redirected_to regit_url(Regit.last)
  end

  test "should show regit" do
    get regit_url(@regit)
    assert_response :success
  end

  test "should get edit" do
    get edit_regit_url(@regit)
    assert_response :success
  end

  test "should update regit" do
    patch regit_url(@regit), params: { regit: { dob: @regit.dob, gender: @regit.gender, name: @regit.name } }
    assert_redirected_to regit_url(@regit)
  end

  test "should destroy regit" do
    assert_difference("Regit.count", -1) do
      delete regit_url(@regit)
    end

    assert_redirected_to regits_url
  end
end
