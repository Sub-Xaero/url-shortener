require "test_helper"

class ShorteningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shortening = shortenings(:one)
  end

  test "should get index" do
    get shortenings_url
    assert_response :success
  end

  test "should get new" do
    get new_shortening_url
    assert_response :success
  end

  test "should create shortening" do
    assert_difference("Shortening.count") do
      post shortenings_url, params: {
        shortening: {
          url: @shortening.url
        }
      }
    end

    assert_redirected_to shortening_url(Shortening.last)
  end

  test "should show shortening" do
    get shortening_url(@shortening)
    assert_response :success
  end

  test "should get edit" do
    get edit_shortening_url(@shortening)
    assert_response :success
  end

  test "should destroy shortening" do
    assert_difference("Shortening.count", -1) do
      delete shortening_url(@shortening)
    end

    assert_redirected_to shortenings_url
  end
end
