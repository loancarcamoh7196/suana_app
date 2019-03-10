class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all.order('id DESC')
  end

  # GET /categories/1
  def show
    
  end

  # GET /categories/new
  def new
    @category = Category.new
    respond_to :js
  end

  # GET /categories/1/edit
  def edit
    respond_to :js
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        flash[:success] = 'Categoria agregada exitosamente.'
        format.js
      else
        flash[:danger] = 'Error, hubo problemas, vuelve intentar'
        format.html { render :index }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  def update
    respond_to do |format|
      if @category.update(category_params)
        flash[:success] = 'Categoria actualizada exitosamente.'
        format.js
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    respond_to do |format|
      flash[:success] = 'La categoría ha sido eliminado existosamente.'
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
