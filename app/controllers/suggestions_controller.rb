class SuggestionsController < ApplicationController
  before_action :set_suggestion, only: %i[show update destroy]
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy, :destroy]

  # GET /suggestions
  # GET /suggestions.json
  def index
    @suggestions = Suggestion.all.order('revised ASC, id DESC ')
    @grafico =  
    @title = "Sugerencias y Pedidos"
  end

  # GET /suggestions/1
  # GET /suggestions/1.json
  def show
    respond_to :js
  end

  # GET /suggestions/new
  def new
    @suggestion = Suggestion.new
  end

  # GET /suggestions/1/edit
  def edit
  end

  # POST /suggestions
  # POST /suggestions.json
  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.user_id = current_user.id if current_user.present?
    @suggestion.type_s = params[:suggestion][:type_s].to_i
    respond_to do |format|
      if @suggestion.save
        if @suggestion.info? || @suggestion.especial?
          flash[:info] = 'Revisaremos tu mensaje y contactaremos en breve contigo.'
        else
          flash[:info] = 'Hemos registrado tu sugerencia, recuerda que una vez al mes revisamos nuestras sugerencias y realizamos encuestas. <br> Gracias por tu opinión'
        end
        
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @suggestion }
      else
        format.html { render :new }
       
      end
    end
  end

  def revised
    @suggestion = Suggestion.find(params[:id])
    @suggestion.revised = true

    respond_to do |format|
      if @suggestion.save
        flash[:info] = "El mensaje a sido revisado #{@suggestion.id}"
        format.js
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestion
      @suggestion = Suggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestion_params
      params.require(:suggestion).permit(:subject, :content, :observation, :user_id, :revised)
    end
end
