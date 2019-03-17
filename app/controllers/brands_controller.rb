class BrandsController < ApplicationController
  before_action :set_brand, only: %i[show edit update destroy]
  load_and_authorize_resource
  
  # GET /brands
  def index
    @brands = Brand.all.order('id DESC')
    @brand = Brand.new
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
  end

  # GET /brands/new
  def new
    @brand = Brand.new
    respond_to :js
  end

  # GET /brands/1/edit
  def edit
    respond_to :js
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        flash[:success] = 'Has actualizado correctamente la marca.'
        format.js
      else
        flash[:danger] = 'Error, intentalo más tarde.'
        format.html { render :new }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brands/1
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        flash[:success] = 'Has actualizado marca correctamente.'
        format.js
      else
        format.html { render :edit }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
    respond_to do |format|
      flash[:danger] = 'Has eliminado marca correctamente. '
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:id, :name)
    end
end
