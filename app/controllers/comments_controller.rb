class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def create
    @feature = Feature.find(params[:feature_id])
    @comment = @feature.comments.create(params[:comment].permit(:name, :body))
    @comment.user = current_user
    @comment.save
    
    redirect_to feature_path(@feature)
  end

  def destroy
    @feature = Feature.find(params[:feature_id])
    @comment = @feature.comments.find(params[:id])
    @comment.destroy

    redirect_to feature_path(@feature)
  end
end
