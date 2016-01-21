class FeaturesController < ApplicationController
  def index
    @features = Feature.all.order('created_at DESC')
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)

    if @feature.save
      redirect_to @feature
    else
      render 'new'
    end
  end

  def show
    @feature = Feature.find(params[:id])
  end

  private
    def feature_params
      params.require(:feature).permit(:title, :body)
    end
end
