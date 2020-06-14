class UsersController < ApplicationController

    get "/login" do
      erb :login
    end

    post "/login" do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password]) 
          session[:user_id] = user.id
        #   flash[:message] = "Welcome back #{user.name}!"
          redirect "/users/#{user.id}"
        else 
          flash[:error] = "Your credentials were not correct. Please try again!"
          redirect '/login'
        end
    end

    get '/signup' do
        erb :"/users/signup"
    end
   
   post '/users' do
        user = User.create(name: params[:name], email: params[:email], password: params[:password])
        session[:user_id] = user.id
        if user.save
            flash[:message] = "You've successfully created your profile!"
            redirect "/users/#{user.id}"
        else    
            flash[:error] = "Sorry, profile not saved: #{user.errors.full_messages.to_sentence}"
            #this is listing the error message "password can't be blank" twice!?
            # binding.pry
            redirect "/signup"
        end
   end

    get "/users/:id" do
        @user = User.find_by(id: params[:id])
        erb :"/users/show"
    end
     
   get '/logout' do
    session.clear
    redirect '/'
   end
     
end