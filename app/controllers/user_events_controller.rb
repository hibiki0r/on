class UserEventsController < ApplicationController
  def create
    UserEvent.create(event_id: params[:event_id], user_id: current_user.id)
    redirect_to "/events/#{params[:event_id]}"
  end
end