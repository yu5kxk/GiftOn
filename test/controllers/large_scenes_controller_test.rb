require 'test_helper'

class LargeScenesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get large_scenes_index_url
    assert_response :success
  end

  test "should get new" do
    get large_scenes_new_url
    assert_response :success
  end

  test "should get edit" do
    get large_scenes_edit_url
    assert_response :success
  end

end
