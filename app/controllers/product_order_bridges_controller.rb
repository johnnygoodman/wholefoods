class ProductOrderBridgesController < ApplicationController
  before_action :set_product_order_bridge, only: [:show, :edit, :update, :destroy]

  # GET /product_order_bridges
  # GET /product_order_bridges.json
  def index
    @product_order_bridges = ProductOrderBridge.all
  end

  # GET /product_order_bridges/1
  # GET /product_order_bridges/1.json
  def show
  end

  # GET /product_order_bridges/new
  def new
    @product_order_bridge = ProductOrderBridge.new
  end

  # GET /product_order_bridges/1/edit
  def edit
  end

  # POST /product_order_bridges
  # POST /product_order_bridges.json
  def create
    @product_order_bridge = ProductOrderBridge.new(product_order_bridge_params)

    respond_to do |format|
      if @product_order_bridge.save
        format.html { redirect_to @product_order_bridge, notice: 'Product order bridge was successfully created.' }
        format.json { render :show, status: :created, location: @product_order_bridge }
      else
        format.html { render :new }
        format.json { render json: @product_order_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_order_bridges/1
  # PATCH/PUT /product_order_bridges/1.json
  def update
    respond_to do |format|
      if @product_order_bridge.update(product_order_bridge_params)
        format.html { redirect_to @product_order_bridge, notice: 'Product order bridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_order_bridge }
      else
        format.html { render :edit }
        format.json { render json: @product_order_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_order_bridges/1
  # DELETE /product_order_bridges/1.json
  def destroy
    @product_order_bridge.destroy
    respond_to do |format|
      format.html { redirect_to product_order_bridges_url, notice: 'Product order bridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_order_bridge
      @product_order_bridge = ProductOrderBridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_order_bridge_params
      params.require(:product_order_bridge).permit(:order_id, :product_id)
    end
end
