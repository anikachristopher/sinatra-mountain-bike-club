class UsersController < ApplicationController

    get '/signup' do
        erb :'/users/signup' #erb always shows you a view. thisbis the signup view located in the users folder
  end

end