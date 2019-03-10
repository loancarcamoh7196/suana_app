class BannersController < ApplicationController
  before_action :set_banner, only: [:show, :edit, :update, :destroy]

  # GET /banners
  # GET /banners.json
  def index
    @banners = Banner.all.order('id DESC')
  end

  # GET /banners/1
  def show
  end

  # GET /banners/new
  def new
    @banner = Banner.new
    respond_to :js
  end

  # GET /banners/1/edit
  def edit
    respond_to :js
  end

  # POST /banners
  # POST /banners.json
  def create
    @banner = Banner.new(banner_params)

    respond_to do |format|
      if @banner.save
        flash[:success] = 'La nueva entrada para el banner ha sido agregada exitosamente.'
        format.js
      else
        format.html { render :new }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banners/1
  def update
    respond_to do |format|
      if @banner.update(banner_params)
        flash[:success] = 'Ha actualizado entrada del banner.'
        format.js
      else
        format.html { render :edit }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banners/1
  def destroy
    @banner.destroy
    respond_to do |format|
      flash[:danger] = 'Ha eliminado la entrada del banner seleccionada.'
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner
      @banner = Banner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banner_params
      params.require(:banner).permit(:title, :description, :actived, :image)
    end
end
