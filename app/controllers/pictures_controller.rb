class PicturesController < ApplicationController
  def new; end

  def index
    @pictures = Picture.all
  end

  def create
    user = User.create!(user_params)
    full_name[:user_id] = user.id
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :password, :avatar)
  end
end
