class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment, status: :created
  end

  def comment_params
    params.require(:comment).permit(:user_id, :event_id, :content)
  end


end
