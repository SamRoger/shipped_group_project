require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boats_index_url
    assert_response :success
  end

  test "should get user:references" do
    get boats_user:references_url
    assert_response :success
  end

end
