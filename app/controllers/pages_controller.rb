class PagesController < ApplicationController
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
