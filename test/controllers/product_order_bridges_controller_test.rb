require 'test_helper'

class ProductOrderBridgesControllerTest < ActionController::TestCase
  setup do
    @product_order_bridge = product_order_bridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_order_bridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_order_bridge" do
    assert_difference('ProductOrderBridge.count') do
      post :create, product_order_bridge: { order_id: @product_order_bridge.order_id, product_id: @product_order_bridge.product_id }
    end

    assert_redirected_to product_order_bridge_path(assigns(:product_order_bridge))
  end

  test "should show product_order_bridge" do
    get :show, id: @product_order_bridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_order_bridge
    assert_response :success
  end

  test "should update product_order_bridge" do
    patch :update, id: @product_order_bridge, product_order_bridge: { order_id: @product_order_bridge.order_id, product_id: @product_order_bridge.product_id }
    assert_redirected_to product_order_bridge_path(assigns(:product_order_bridge))
  end

  test "should destroy product_order_bridge" do
    assert_difference('ProductOrderBridge.count', -1) do
      delete :destroy, id: @product_order_bridge
    end

    assert_redirected_to product_order_bridges_path
  end
end
