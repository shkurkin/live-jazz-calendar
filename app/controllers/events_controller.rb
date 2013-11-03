class EventsController < ApplicationController
  def index
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render 'index'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end
end
