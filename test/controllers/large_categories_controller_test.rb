require 'test_helper'

class LargeCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get large_categories_index_url
    assert_response :success
  end

  test "should get new" do
    get large_categories_new_url
    assert_response :success
  end

end
