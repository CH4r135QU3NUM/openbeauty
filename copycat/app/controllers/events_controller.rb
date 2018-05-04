class EventsController < ApplicationController
  def create
     
  end

 def home

  end

  def new

		@event = Event.new
	 	@event.description = params[:description]
		
	  
	 	@event.save
	 	@events = Event.all



  end


 def show
   
   if session[:event_id]

      @current_event = Event.find(session[:event_id])

    end

 end

end
