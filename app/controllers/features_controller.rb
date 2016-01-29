class FeaturesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @features = Feature.all.order('created_at DESC')
  end

  def new
    @feature = current_user.features.build
  end

  def create
    @feature = current_user.features.build(feature_params)

    if @feature.save
      redirect_to @feature
    else
      render 'new'
    end
  end

  def show
    @feature = Feature.find(params[:id])
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])

    if @feature.update(params[:feature].permit(:title, :body))
      redirect_to @feature
    else
      render 'edit'
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy

    redirect_to root_path
  end

  private
    def feature_params
      params.require(:feature).permit(:title, :body)
    end
end
