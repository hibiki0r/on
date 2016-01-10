class UserEventsController < ApplicationController
  def create
    UserEvent.create(event_id: params[:event_id], user_id: current_user.id)
    redirect_to controller: 'events', action: :index if user_signed_in?
  end
end