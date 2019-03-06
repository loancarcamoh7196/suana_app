class ClustersController < ApplicationController

  def show
    @cluster = Cluster.find(params[:id])
    @categories = Category.where(id: @cluster.category_id)
  end
    
  private
    def cluster_params
      params.require(:cluster).permit(:product_id, :category_id)
    end
end
