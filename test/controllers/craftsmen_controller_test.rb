require "test_helper"

class CraftsmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @craftsman = craftsmen(:one)
  end

  test "should get index" do
    get craftsmen_url, as: :json
    assert_response :success
  end

  test "should create craftsman" do
    assert_difference('Craftsman.count') do
      post craftsmen_url, params: { craftsman: { bio: @craftsman.bio, city: @craftsman.city, email: @craftsman.email, name: @craftsman.name, open_to_work: @craftsman.open_to_work, phone_number: @craftsman.phone_number, state: @craftsman.state, website: @craftsman.website } }, as: :json
    end

    assert_response 201
  end

  test "should show craftsman" do
    get craftsman_url(@craftsman), as: :json
    assert_response :success
  end

  test "should update craftsman" do
    patch craftsman_url(@craftsman), params: { craftsman: { bio: @craftsman.bio, city: @craftsman.city, email: @craftsman.email, name: @craftsman.name, open_to_work: @craftsman.open_to_work, phone_number: @craftsman.phone_number, state: @craftsman.state, website: @craftsman.website } }, as: :json
    assert_response 200
  end

  test "should destroy craftsman" do
    assert_difference('Craftsman.count', -1) do
      delete craftsman_url(@craftsman), as: :json
    end

    assert_response 204
  end
end
