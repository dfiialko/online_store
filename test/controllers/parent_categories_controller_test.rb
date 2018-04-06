require 'test_helper'

class ParentCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_category = parent_categories(:one)
  end

  test "should get index" do
    get parent_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_category_url
    assert_response :success
  end

  test "should create parent_category" do
    assert_difference('ParentCategory.count') do
      post parent_categories_url, params: { parent_category: { name: @parent_category.name } }
    end

    assert_redirected_to parent_category_url(ParentCategory.last)
  end

  test "should show parent_category" do
    get parent_category_url(@parent_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_category_url(@parent_category)
    assert_response :success
  end

  test "should update parent_category" do
    patch parent_category_url(@parent_category), params: { parent_category: { name: @parent_category.name } }
    assert_redirected_to parent_category_url(@parent_category)
  end

  test "should destroy parent_category" do
    assert_difference('ParentCategory.count', -1) do
      delete parent_category_url(@parent_category)
    end

    assert_redirected_to parent_categories_url
  end
end
