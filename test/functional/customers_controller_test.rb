require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  # Need to add authorisation logic to test
  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:customers)
  # end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { browser: @customer.browser, browser_version: @customer.browser_version, cookies: @customer.cookies, email: @customer.email, engine: @customer.engine, engine_version: @customer.engine_version, ip_address: @customer.ip_address, name: @customer.name, operating_system: @customer.operating_system }
    end

    assert_redirected_to customer_submitted_path
  end

  # Need to add authorisation logic to test

  # test "should show customer" do
  #   get :show, id: @customer
  #   assert_response :success
  # end

  # test "should destroy customer" do
  #   assert_difference('Customer.count', -1) do
  #     delete :destroy, id: @customer
  #   end

  #   assert_redirected_to customers_path
  # end
end
