class LoginController < ApplicationController

  get '/login' do
    erb :Login
  end

  post '/sessions' do
    'Hello World'
  end

end
