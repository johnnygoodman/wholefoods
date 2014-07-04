class CustomerOrderBridgesController < ApplicationController
  before_action :set_customer_order_bridge, only: [:show, :edit, :update, :destroy]

  # GET /customer_order_bridges
  # GET /customer_order_bridges.json
  def index
    @customer_order_bridges = CustomerOrderBridge.all
  end

  # GET /customer_order_bridges/1
  # GET /customer_order_bridges/1.json
  def show
  end

  # GET /customer_order_bridges/new
  def new
    @customer_order_bridge = CustomerOrderBridge.new
  end

  # GET /customer_order_bridges/1/edit
  def edit
  end

  # POST /customer_order_bridges
  # POST /customer_order_bridges.json
  def create
    @customer_order_bridge = CustomerOrderBridge.new(customer_order_bridge_params)

    respond_to do |format|
      if @customer_order_bridge.save
        format.html { redirect_to @customer_order_bridge, notice: 'Customer order bridge was successfully created.' }
        format.json { render :show, status: :created, location: @customer_order_bridge }
      else
        format.html { render :new }
        format.json { render json: @customer_order_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_order_bridges/1
  # PATCH/PUT /customer_order_bridges/1.json
  def update
    respond_to do |format|
      if @customer_order_bridge.update(customer_order_bridge_params)
        format.html { redirect_to @customer_order_bridge, notice: 'Customer order bridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_order_bridge }
      else
        format.html { render :edit }
        format.json { render json: @customer_order_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_order_bridges/1
  # DELETE /customer_order_bridges/1.json
  def destroy
    @customer_order_bridge.destroy
    respond_to do |format|
      format.html { redirect_to customer_order_bridges_url, notice: 'Customer order bridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_order_bridge
      @customer_order_bridge = CustomerOrderBridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_order_bridge_params
      params.require(:customer_order_bridge).permit(:order_id, :customer_id)
    end
end
