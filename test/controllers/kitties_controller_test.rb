require "test_helper"

class KittiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitty = kitties(:one)
  end

  test "should get index" do
    get kitties_url
    assert_response :success
  end

  test "should get new" do
    get new_kitty_url
    assert_response :success
  end

  test "should create kitty" do
    assert_difference('Kitty.count') do
      post kitties_url, params: { kitty: { name: @kitty.name } }
    end

    assert_redirected_to kitty_url(Kitty.last)
  end

  test "should show kitty" do
    get kitty_url(@kitty)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitty_url(@kitty)
    assert_response :success
  end

  test "should update kitty" do
    patch kitty_url(@kitty), params: { kitty: { name: @kitty.name } }
    assert_redirected_to kitty_url(@kitty)
  end

  test "should destroy kitty" do
    assert_difference('Kitty.count', -1) do
      delete kitty_url(@kitty)
    end

    assert_redirected_to kitties_url
  end
end
