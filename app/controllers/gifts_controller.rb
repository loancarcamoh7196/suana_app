class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /gifts
  # GET /gifts.json
  def index
    @gifts = Gift.where(available: true)
    @gift = Gift.new
  end

  # GET /gifts/1
  # GET /gifts/1.json
  def show
  end

  # GET /gifts/new
  def new
    @gift = Gift.new
  end

  # GET /gifts/1/edit
  def edit
    
  end

  # POST /gifts
  # POST /gifts.json
  def create
    @gift = Gift.new(gift_params)

    if @gift.save
      flash[:success] = 'Se ha agregado exitosamente de Regalo.'
      redirect_to gifts_path

    else
      flash[:danger] = 'Oh oh... algo salió mal, por favor intentalo más tarde.'
      redirect_to gifts_path
    end
  end

  # PATCH/PUT /gifts/1
  # PATCH/PUT /gifts/1.json
  def update
    
    if @gift.update(gift_params)
      flash[:success] = 'Se ha actualizado exitosamente de Regalo.'
      redirect_to gifts_path
    
    else
      flash[:danger] = 'Oh oh... algo salió mal, por favor intentalo más tarde.'
      redirect_to gifts_path
    end
    
  end

  # DELETE /gifts/1
  def destroy
    @gift.destroy
    
    flash[:danger] = 'Ha eliminado el regalo correctamente.'
    respond_to :js    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift
      @gift = Gift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_params
      params.require(:gift).permit(:name, :description, :points, :available, :quantity, images: [])
    end
end
