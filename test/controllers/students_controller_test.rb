require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get send_mail" do
    get students_send_mail_url
    assert_response :success
  end

end
