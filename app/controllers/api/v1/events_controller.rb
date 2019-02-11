class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event, status: :created
  end

  def event_params
    params.require(:event).permit(:name, :category, :description, :group_id)
  end

end
