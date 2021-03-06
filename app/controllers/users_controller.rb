class UsersController < ApplicationController

    get '/signup' do
        erb :'/users/signup'
  end

  post '/signup' do
    if  params[:email].empty? || params[:password].empty?
        redirect to '/signup'
    else 
        @user = User.create(user_name: params["user_name"], email: params["email"], password: params["password"])
        @user.save
        session[:user_id] = @user.id
        redirect to '/events'
        end 
    end

    get '/login' do
        erb :welcome
    end

    post "/login" do
        user = User.find_by(:user_name => params[:user_name])
    
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect '/success'
        else
          redirect '/failure'
        end
      end

      get '/logout' do 
        session.clear 
        redirect '/'
      end 

end