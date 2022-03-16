class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(user_params)
    if @picture.save
      redirect_to current_path
    else
      render 'new'
    end
  end

  def update
    @picture = Picture.find[:id]
    if @picture.update_attributes(params[user_params])
    end
    redirect_to pictures_path
  end

  private

  def user_params
    params.require(:picture).permit(:full_name, :password, :avatar)
  end
end
