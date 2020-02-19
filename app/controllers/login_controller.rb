class LoginController < ApplicationController

  get '/login' do
    erb :login
  end

  post '/sessions' do
    login(params[:email], params[:password])
    redirect '/posts'
  end

  get '/logout' do
    logout!
    redirect '/'
  end

end
