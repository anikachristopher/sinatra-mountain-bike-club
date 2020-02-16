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

end