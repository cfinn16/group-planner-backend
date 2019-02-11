class Api::V1::UserGroupsController < ApplicationController
  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def create
    @user_group = UserGroup.create(user_group_params)
    render json: @user_group, status: :created
  end

  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id)
  end


end
