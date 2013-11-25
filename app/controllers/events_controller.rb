class EventsController < ApplicationController
  def index
    @event = Event.new
    @events = Event.all
    @events_by_date = @events.group_by(&:date_time)
  end

  def create
    @event = Event.new(params[:event])
    @events = Event.all
    @events_by_date = @events.group_by(&:date_time)
    if @event.save
      redirect_to @event
    else
      render 'index'
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to root_url
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
  end
end
