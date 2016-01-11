class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @username = current_user.username
    @events = Event.where(user_id: current_user.id)
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:username,:userimage)
  end

end
