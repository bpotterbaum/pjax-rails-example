require 'test_helper'

class BookControllerTest < ActionController::TestCase
  test "should get end" do
    get :end
    assert_response :success
  end

end
