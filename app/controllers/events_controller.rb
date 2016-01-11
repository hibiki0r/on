class EventsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @events = Event.order("created_at DESC")
    # @event = Event.find(params[:id])
    # @paticipants = @event.users
  end

  def new
    @event= Event.new
  end

  def create
    Event.create(title: event_params[:title], image: event_params[:image], date: event_params[:date], outline: event_params[:outline],user_id: current_user.id)
  end

  def show
    @event = Event.find(params[:id])
    @paticipants = @event.users
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event= Event.find(params[:id])
    event.update(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:title, :image, :date, :outline)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end


end
