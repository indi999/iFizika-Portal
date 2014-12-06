require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should new kontakt" do
    get :pretraga
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should new new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { oblast: @product.oblast, opis: @product.opis, zadatak: @product.zadatak }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should new edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { oblast: @product.oblast, opis: @product.opis, zadatak: @product.zadatak }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
