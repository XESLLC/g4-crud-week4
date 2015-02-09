class EventsController < ApplicationController


  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create

    event = Event.new(event_params)
    if event.save
      redirect_to action: :index
    else
      render "new"
    end

  end
  private

   def event_params
     params.require(:event).permit(:date, :location, :description, :req_id)
   end
end
