class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @past_events = Event.past.includes(:creator)
    @upcoming_events = Event.upcoming.includes(:creator)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
  
    if @event.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event, notice: "Editted Successful!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    current_user.attended_events.destroy(@event)

    redirect_to @event, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date_of_event, :location)
  end
end
