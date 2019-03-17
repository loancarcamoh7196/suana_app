class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  before_action :authors, only: %i[new edit]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /products
  def index
    @products = Product.all
    @product = Product.new
  end

  # GET /products/1
  def show
    @clusters = Cluster.where(product_id: params[:id])
    @detail = Detail.new
    @brands = Brand.all.pluck(:name, :id)
    @list_detail = Detail.where(product_id: params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all.pluck(:name, :id)
  end

  # GET /products/1/edit
  def edit

    @categories = Category.all.pluck(:name, :id)
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    
    if @product.save
      params[:product][:category_id].each do |c|
        Cluster.create(product: @product, category_id: c) if c.present?
      end

      flash[:success] = 'Product was successfully created.'
      redirect_to product_path(@product)
    end
    
  end

  # PATCH/PUT /products/1
  def update
    respond_to do |format|

      if @product.update(product_params)
        Cluster.where(product_id: params[:id]).destroy_all

        params[:product][:category_id].each do |c|
          Cluster.create(product: @product, category_id: c) if c.present?
        end
        flash[:success] = 'Producto fue modificado exitosamente'
        format.html { redirect_to @product }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
  private
    def authors
      @authors = Author.all.pluck(:name, :id)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :author_id, :point_quantity, :is_gift)
    end
end
