class UsersController < ApplicationController

  def show
    @username = current_user.username
    @events = Event.where(user_id: current_user.id)
  end
end
