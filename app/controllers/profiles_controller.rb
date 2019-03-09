class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = User.find(current_user.id)
    @wishlists = current_user.wishlists
    
    respond_to do |format|
      format.js
      format.html
    end
  end

  def address
    @user = User.find(current_user.id)
    @addresses = Address.where(user_id: current_user.id)
    respond_to do |format|
      format.js
      format.html
    end
  end
end
