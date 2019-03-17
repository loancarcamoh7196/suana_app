class ProfilesController < ApplicationController
  before_action :authenticate_user!
  authorize_resource :class => false 

  
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
    @addresses = Address.where(user_id: current_user.id).order('id DESC')
    @count_address = Address.where(user: current_user).orders.count
    respond_to do |format|
      format.js
      format.html
    end
  end
end
