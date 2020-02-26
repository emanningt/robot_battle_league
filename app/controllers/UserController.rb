class UsersController < ApplicationController

  get '/login' do
    erb :login
  end

  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      puts session
      redirect "users/#{@user.id}"
    else
    redirect '/'
    end 
  end

  get '/users/:id' do 
    @user = User.find_by(id: params[:id])
    erb :'users/logedin'
  end 

  get '/signup' do
    erb :"users/new"
  end

  post '/users' do 
    if params[:name] != "" && params[:email] != "" && params[:password] != ""
      @user = User.create(params)
      redirect "/users/#{@user.id}"
    else 
      redirect "/"
    end 
  end 

  get '/logout' do
    logout!
    redirect '/'
  end

  

end
