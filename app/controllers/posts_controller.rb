class PostCard < ApplicationController
  get '/posts' do
    "You are loged in as #{session[:email]}"
  end

  get '/yourcard' do
    "Your card is #{session[:card]}"
  end

  get '/post/new' do
  if !session[:email]
    redirect '/'
  else
    "a new post form"
  end
  end

    get '/post/id/edit' do
      if !session[:email]
        redirect '/login'
      else
        "a new post form"
      end
    end
end
