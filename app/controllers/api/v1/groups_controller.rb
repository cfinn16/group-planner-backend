class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render json: @groups
  end

  def show
    @group = Group.find(params[:id])
    render json: @group, status: :ok
  end

  def show_groups
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
