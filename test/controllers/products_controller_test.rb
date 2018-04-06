require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { articul: @product.articul, category_id: @product.category_id, description: @product.description, instock: @product.instock, name: @product.name, packaging: @product.packaging, price: @product.price, qty: @product.qty, title: @product.title, units: @product.units, url_key: @product.url_key, url_path: @product.url_path } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { articul: @product.articul, category_id: @product.category_id, description: @product.description, instock: @product.instock, name: @product.name, packaging: @product.packaging, price: @product.price, qty: @product.qty, title: @product.title, units: @product.units, url_key: @product.url_key, url_path: @product.url_path } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
