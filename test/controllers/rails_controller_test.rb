require 'test_helper'

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get g" do
    get rails_g_url
    assert_response :success
  end

  test "should get controller" do
    get rails_controller_url
    assert_response :success
  end

  test "should get users" do
    get rails_users_url
    assert_response :success
  end

  test "should get new" do
    get rails_new_url
    assert_response :success
  end

  test "should get create" do
    get rails_create_url
    assert_response :success
  end

  test "should get me" do
    get rails_me_url
    assert_response :success
  end

end
