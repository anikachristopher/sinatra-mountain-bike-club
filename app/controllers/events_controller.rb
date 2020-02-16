class EventsController < ApplicationController
    get '/events' do
        @events = Event.all
        erb :'index'
      end

      get '/events/new' do
        erb :'new'
      end
       
      post '/events' do
        @event = Event.create(:name => params[:name], :event_date => params[:event_date], :location => params[:location], :time => params[:time], :category => params[:category])
        redirect to "/events/#{@event.id}"
      end
end