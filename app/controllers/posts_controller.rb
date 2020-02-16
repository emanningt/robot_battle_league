class PostCard < ApplicationController
  get '/posts' do
    "You are loged in as no one"
  end

  get '/yourcard' do
    "Your card is #{session[:card]}"
  end

  get '/posts/new' do
  if !logged_in?
    redirect '/login'
  else
    "a new post form"
  end
  end

    get '/posts/:id/edit' do
      if !logged_in?
        redirect "/login"
      else
        post = Post.find(params[:id])
        "a new post form #{current_user.id} is editing #{post.id}"
      end
    end

end
