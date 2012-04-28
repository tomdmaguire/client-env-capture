class CustomersController < ApplicationController
  include ControllerAuthentication

  before_filter :login_required, :except => [:new, :create, :index, :submitted]

  # GET /customers
  # GET /customers.json
  def index
    # manual authorisation to allow customers to reach
    # /customers via post in create method
    redirect_to root_path and return unless current_user

    @customers = Customer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html
      format.json { render json: @customer }
    end
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    RequestParser.parse request do |ip_address, agent, cookies|
      @customer.ip_address        = ip_address
      @customer.browser           = agent.name
      @customer_browser_version   = agent.version
      @customer.engine            = agent.engine
      @customer.engine_version    = agent.engine_version
      @customer.operating_system  = agent.os
      @customer.cookies           = cookies
    end

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_submitted_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  def submitted
  end
end
