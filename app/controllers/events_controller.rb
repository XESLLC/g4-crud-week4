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

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end



  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      redirect_to action: :index
    else
      render "edit "
    end
  end

private
   def event_params
     params.require(:event).permit(:date, :location, :capacity, :description, :req_id)
   end
end
