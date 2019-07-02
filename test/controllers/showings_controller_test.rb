require 'test_helper'

class ShowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get showings_new_url
    assert_response :success
  end

end
