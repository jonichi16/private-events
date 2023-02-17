class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.created_events
  end

  def destroy
    @event = Event.find(params[:id])
    current_user.created_events.destroy(@event)

    redirect_to current_user, status: :see_other
  end
end
