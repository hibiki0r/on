class CommentsController < ApplicationController
  def new
    @event = Event.find params[:event_id]
    @comment = Comment.new
  end

  def create
    Comment.create(create_params)
    redirect_to controller: :events, action: :index
  end

  private
    def create_params
      params.require(:comment).permit(:comment).merge(event_id: params[:event_id])
    end
end