class PostCard < ApplicationController
  get '/posts' do
    "You are loged in as #{session[:email]}"
  end

  get '/yourcard' do
    "Your card is #{session[:card]}"
  end

  get '/post/new'
  if session[:email].empty?
    redirect "/login"
  else
    "a new post form"
  end 
  end
end
