class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # POST /choose_address
  #Página de selección de dirección de envío
  def direction
    @gift = Gift.find(params[:id])
    @addresses = Address.where(user: current_user).order('id DESC')
  end

  def execute
    #order = current_user.order
    @gift = Gift.find(params[:gift_id])
    @address = Address.find(params[:address_id])
    @user = User.find(current_user.id)
    

    if @user.points >= @gift.points && @gift.quantity.positive?
      claim = Claim.new(
        user: current_user,
        gift_id: @gift.id,
        address: @address,
        quantity: 1,
        points: @gift.points
      )
      claim.save
      
      Gift.where(id: @gift.id).update_all(quantity: @gift.quantity - claim.quantity)
      
      @user.update(points: @user.points - @gift.points)

      flash[:success] = 'Has canjeado con éxito tu regalo. Si deseas ver tu comprobant, ve a tu perfil sección Tus regalos<br>Gracias por preferirnos y vuelve pronto... '

      redirect_to root_path

    elsif  @gift.quantity <= 0
      Gift.where(id: gift.id).update_all(available: false)
      flash[:danger] = 'Algo salió mal, sentimos las molestias y por favor vuelve a intentar más tarde. Puedo que ya no tengamos stock o quizas no tengas los puntos suficientes'.

      redirect_to root_path
    else
      flash[:danger] = 'Algo salió mal, sentimos las molestias y por favor vuelve a intentar más tarde. <br> Puedo que ya no tengamos stock o quizas no tengas los puntos suficientes'
      redirect_to root_path
    end
    
  end

  #Metodo que devuelve billing de usuario actual(current_user)
  def my_claim
    @claims = Claim.where(user: current_user).order('id DESC')
  end

  #Método que devuelve una boleta  y sus detalles
  def detail_claim
    @gift = Gift.find(params[:id])
    @gifts = current_user.claim.where( gift_id: params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  #Método que devuelve una boleta  y sus detalles, pero en pdf
  def show
    @claim = Claim.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "claims #{@claim.id}",
        template: "claims/show.html.erb",
        layout: 'pdf.html.erb'
      end
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim
      @claim = Claim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_params
      params.require(:claim).permit(:points, :quantity, :user_id, :address_id)
    end
end
