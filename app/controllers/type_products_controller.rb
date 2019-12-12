class TypeProductsController < ApplicationController
  before_action :set_type_product, only: [:show, :edit, :update, :destroy]

  # GET /type_products
  # GET /type_products.json
  def index
    @type_products = TypeProduct.all
  end

  # GET /type_products/1
  # GET /type_products/1.json
  def show
  end

  # GET /type_products/new
  def new
    @type_product = TypeProduct.new
  end

  # GET /type_products/1/edit
  def edit
  end

  # POST /type_products
  # POST /type_products.json
  def create
    @type_product = TypeProduct.new(type_product_params)
    if @type_product.save
      flash[:success] = "Se creó el Tipo de Producto."
      redirect_to @type_product
    else
      flash.now[:danger] = "Se produjó un erro."
      render :new
    end
  end

  # PATCH/PUT /type_products/1
  # PATCH/PUT /type_products/1.json
  def update
      if @type_product.update(type_product_params)
        flash[:success] = "Se modificó el Tipo de Producto."
        redirect_to @type_product
      else
        flash.now[:danger] = "Se produjó un erro."
        render :edit
      end
  end

  # DELETE /type_products/1
  # DELETE /type_products/1.json
  def destroy
    @type_product.destroy
    respond_to do |format|
      format.html { redirect_to type_products_url, notice: 'Type product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_product
      @type_product = TypeProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_product_params
      params.require(:type_product).permit(:name, :description, :active)
    end
end
