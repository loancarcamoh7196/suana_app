class WishlistsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  
  def index
    @wishlists = current_user.wishlists
    respond_to do |format|
      format.js
      format.html
    end
  end
  
  def create
    @detail = Detail.find(params[:detail_id])
    @wishlist = Wishlist.new(
      user: current_user,
      detail_id: params[:detail_id]
    )

    @wishlist.save
    respond_to do |format|
      format.js { flash[:info] = 'Has agregado producto a tu lista de deseos' }
    end
  end

  def destroy
    @detail = Detail.find(params[:detail_id])
    @whishlist = Wishlist.where(detail: @detail, user: current_user).first
    
    respond_to do |format|
      if @whishlist.destroy
        flash[:warning] = 'Has quitado producto de tu lista de deseos.'
        format.js
      else
        flash[:error] = 'Something went wrong'
        format.html{ redirect_to root_path }
      end
    end
  end
end
