class DetailsController < ApplicationController
  before_action :set_detail, only: %i[show edit update destroy]
  # load_and_authorize_resource
  
  #Catalogo - Vista de detalle Producto disponibles
  #Arreglar que ve administrador y ver usuario comun
  def index
    respond_to do |format|
      if !params[:buscador].nil?
        if params[:buscador].blank?
          @details = Detail.all
        elsif params[:buscador].length >= 3
          # @details = Detail.where('product.title LIKE ?', "%#{params[:buscador]}%")
          @details = Detail.joins(:product).where('title LIKE ?', "%#{params[:buscador]}%")
        end
        format.js
      else
        @details = Detail.all
        format.html
      end
    end
  end
  
  def show
    detail = Detail.where(id: params[:id]).first
    #Mostrar Tags de Categoria
    @clusters = Cluster.where(product: detail.product.id )
    
    #Necesario par formularios
    @brands = Brand.all.pluck(:name, :id)

    @list_detail = Detail.where(detail_id: params[:id])
    
    #Necesario para mostrar Comentarios 
    @comments = Comment.where(detail: @detail).order('created_at DESC')
    @comment = Comment.new
  end
  
  #Desde productos show creamos  un detalle
  def create
    @detail = Detail.new(detail_params)
    @detail.product_id = params[:product_id]
    
    if @detail.save
      flash[:success] = 'Detalle de Producto agregado exitosamente. '
      redirect_to product_path(params[:product_id])
    else
      flash[:error] = "Something went wrong"
      redirect_to product_path(params[:product_id])
    end
  end
  
  #Desde producto show eliminamos un detalle
  def destroy
    @detail = Detail.find(params[:id])
    if @detail.destroy
      flash[:warning] = 'Detalle de Producto eliminado exitosamente.'
      redirect_to product_path(params[:product_id])
    else
      flash[:danger] = 'Something went wrong'
      redirect_to product_path(params[:product_id])
    end
  end
  
  def edit
    @product = Product.find(params[:product_id])
    detail = Detail.where(id: params[:id]).first
    @clusters = Cluster.where(product: detail.product.id )
    @brands = Brand.all.pluck(:name, :id)

    respond_to { |format| format.js }
  end
  
  def update
    @product = Product.find(params[:product_id])
    
    respond_to do |format|
      if @detail.update(detail_params)
        format.js
      else
        flash[:danger] = 'Error. Intente nuevamente'
        format.html { redirect_to product_path(params[:product_id]) }
      end
    end
  end

  def view_for_category
    @details = data_for_category(params[:name])
    respond_to :js
  end

  def list_gift
    @details = data_for_gifts
    respond_to :js
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_detail
    @detail = Detail.find(params[:id])
  end

  private
  def data_for_category(category_name)
    cluster = Cluster.joins("INNER JOIN categories ON  categories.id = clusters.category_id AND categories.name LIKE '#{category_name}'" ).first
    
    if cluster != nil
      details_for_cluster = Detail.where(product_id: cluster.product_id)
    else
      details_for_cluster = Detail.where('1 = 2')
    end
    details_for_cluster
  end

  private
  def data_for_gifts
    details = Detail.joins("INNER JOIN products ON products.id = details.product_id AND is_gift = true")

    details!=nil ?  details : Detail.where('1 = 2')
  end

  private
  def detail_params
    params.require(:detail).permit(:unique_identifider, :brand_id, :quantity, :is_reserved, :available, :price, :product_id, :chapter, images: [])
  end
end
