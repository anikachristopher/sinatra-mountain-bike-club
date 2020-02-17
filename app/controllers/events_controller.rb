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

      get '/events/:id' do
        @event = Event.find_by_id(params[:id])
         erb :'show'
          end
      end

      get '/events/:id/edit' do  
        @event = Event.find_by_id(params[:id])
        erb :edit
      end
     
    patch '/events/:id' do 
      @event = Event.find_by_id(params[:id])
      @event.update(params[:event])
    #   @event.name = params[:name]
    #   @event.event_date = params[:event_date]
    #   @event.location = params[:location]
    #   @event.time = params[:time]
    #   @event.category = params[:category]
    #   @event.save
      redirect to "/events/#{@event.id}"
    end

    # delete '/articles/:id' do #delete action
    #     @article = Article.find_by_id(params[:id])
    #     @article.delete
    #     redirect to '/articles'
    #   end
end