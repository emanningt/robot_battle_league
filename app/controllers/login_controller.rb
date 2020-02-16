class LoginController < ApplicationController

  get '/login' do
    erb :Login
  end

  post '/sessions' do
    login(params[:email])
    redirect '/posts'
  end

  get '/logout' do
    logout!
    redirect '/'
  end

end
