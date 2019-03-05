class CommentsController < ApplicationController
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def new
    @detail = Detail.find(params[:detail_id])
    @comment = Comment.new
    
    respond_to :js
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.detail_id = params[:detail_id]
    
    @comment.save
    respond_to :js
        

    # if @comment.save
    #     redirect_to posts_path
    # else
    #     redirect_to posts_path, alert: 'Error. Intente nuevamente' 
    # end
  end

  def edit
    @comment = Comment.find(params[:id])
    @detail = Detail.find(params[:detail_id])
    
    respond_to { |format| format.js }
  end

  def update
    @detail = Detail.find(params[:detail_id])
    @comment = Comment.find(params[:id])
  
    respond_to do |format|
      if @comment.update(comment_params)
        format.js
      else
        flash[:danger] = 'Error. Intente nuevamente'
        format.html { detail_path(params[:detail_id]) }
      end
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.destroy
        format.js
      else
        flash[:danger] = 'Error. Intente nuevamente'
        format.html { detail_path(params[:detail_id]) }
      end 
    end
  end
    
  def comment_params
    params.require(:comment).permit(:description, :banned, :user_id)
  end

end
