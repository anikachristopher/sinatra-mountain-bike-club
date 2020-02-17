class UsersController < ApplicationController

    get '/signup' do
        erb :'/users/signup' #erb always shows you a view. thisbis the signup view located in the users folder
  end

  post '/signup' do
    if  params[:email].empty? || params[:password].empty?
        redirect to "/signup"
    else 
        @user = User.create(name: params["user_name"], email: params["email"], password: params["password"])
        @user.save
        session[:user_id] = @user.id
        redirect to "/events"
        end 
    end

    get '/login' do
        erb :welcome
    end

    post "/login" do
        user = User.find_by(:username => params[:username])
    
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect "/success"
        else
          redirect "/failure"
        end
      end

      get '/logout' do 
        session.clear 
        redirect '/'
      end 

end