require 'test_helper'

class FinalPicsControllerTest < ActionDispatch::IntegrationTest
  test "should get location:string" do
    get final_pics_location:string_url
    assert_response :success
  end

  test "should get benchmark_pic_id:integer" do
    get final_pics_benchmark_pic_id:integer_url
    assert_response :success
  end

  test "should get hashtag:text" do
    get final_pics_hashtag:text_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get final_pics_user_id:integer_url
    assert_response :success
  end

end
