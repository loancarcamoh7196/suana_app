class PagesController < ApplicationController
  # authorize_resource :index=> :page
  # skip_authorize_resource only: [:index, :home, :contact, :us]
  authorize_resource :resource => :controller 

  
  def index
    @banners = Banner.all.take(2)
    @details = Detail.all.take(10)
  end

  def home
  end

  def contact
  end

  def us
  end
end
