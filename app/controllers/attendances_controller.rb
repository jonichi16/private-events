class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:id])

    if @event.creator == current_user
      redirect_to @event, notice: "You create the event"
    elsif current_user.attended_events.include?(@event)
      redirect_to @event, alert: "You're already registered"
    else
      current_user.attended_events << @event
      redirect_to @event, notice: "Successful"
    end
  end
end
