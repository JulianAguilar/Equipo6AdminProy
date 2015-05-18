require 'test_helper'

class PEmpleadosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
