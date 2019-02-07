class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: ['groups.events.comments'], status: :ok
  end

  # def show_groups
  #   @user = User.find(params[:id])
  #   render json: @user, status: :ok
  #
  # end

  def user_params
    params.require(:user).permit(:name)
  end

end
