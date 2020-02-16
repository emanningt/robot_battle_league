class LoginController < ApplicationController

  get '/login' do
    erb :Login
  end

  post '/sessions' do
    session[:email] = params[:email]

    redirect '/posts'
  end

  get '/logout' do
    session.clear
    redirect '/login'
  end

end
