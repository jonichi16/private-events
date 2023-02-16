class AttendancesController < ApplicationController
  def create
    @attended_event = current_user.attendances.build(attended_event_id: params[:attended_event])

    if @attended_event.save && !current_user.attended_events.includes(@attended_event)
      redirect_to @attended_event, notice: "Successful"
    else
      redirect_to @attended_event, alert: "You're already registered"
    end
  end
end
