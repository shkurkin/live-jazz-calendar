class EventsController < ApplicationController
  def index
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save

    else
      render 'index'
    end
  end
end
