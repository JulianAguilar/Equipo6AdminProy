require 'test_helper'

class LclientesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get cpedidos" do
    get :cpedidos
    assert_response :success
  end

end
