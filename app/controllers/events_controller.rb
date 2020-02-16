class EventsController < ApplicationController
    get '/events' do
        @events = Event.all
        erb :'index'
      end
end