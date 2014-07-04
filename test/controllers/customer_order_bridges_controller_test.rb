require 'test_helper'

class CustomerOrderBridgesControllerTest < ActionController::TestCase
  setup do
    @customer_order_bridge = customer_order_bridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_order_bridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_order_bridge" do
    assert_difference('CustomerOrderBridge.count') do
      post :create, customer_order_bridge: { customer_id: @customer_order_bridge.customer_id, order_id: @customer_order_bridge.order_id }
    end

    assert_redirected_to customer_order_bridge_path(assigns(:customer_order_bridge))
  end

  test "should show customer_order_bridge" do
    get :show, id: @customer_order_bridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_order_bridge
    assert_response :success
  end

  test "should update customer_order_bridge" do
    patch :update, id: @customer_order_bridge, customer_order_bridge: { customer_id: @customer_order_bridge.customer_id, order_id: @customer_order_bridge.order_id }
    assert_redirected_to customer_order_bridge_path(assigns(:customer_order_bridge))
  end

  test "should destroy customer_order_bridge" do
    assert_difference('CustomerOrderBridge.count', -1) do
      delete :destroy, id: @customer_order_bridge
    end

    assert_redirected_to customer_order_bridges_path
  end
end
