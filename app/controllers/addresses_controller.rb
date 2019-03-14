class AddressesController < ApplicationController
  before_action :set_address, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[index new create]

  # GET /addresses
  def index
    @addresses = Address.where(user_id: current_user.id).order('id DESC')
    @count_address = Address.where(user: current_user).orders.count
  end

  # GET /addresses/1
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
    @townships = Township.all.pluck(:name, :id)
    respond_to :js
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id

    

    respond_to do |format|
      if @address.save
        flash[:success] = 'Has agregado tu direccion exitosamente.'
        format.js
      else
        flash[:warning] = 'Oh oh... algo ha salido mal, porfavor intentalo más tarde...'
        format.html
        redirect_to root_path
      end
    end
  end

  # PATCH/PUT /addresses/1
  def update
    respond_to do |format|
      if @address.update(address_params)
        flash[:success] = 'Has actualizado correctamente tu dirección correctamente'
        format.js
      else
        flash[:danger] = 'Oh oh... hubo un problema, porfavor intentalo nuevamente más tarde...'
        redirect_to  profiles_path
      end
    end
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy
    respond_to do |format|
      flash[:danger] = 'Has elimidado tu dirección corectamente.'
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:street, :number_street, :building_type, :township_id, :user_id, :zip_code)
    end
end
