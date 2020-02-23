class PostCard < ApplicationController
  get '/posts' do
    if !logged_in?
      redirect '/login'
    else 
      erb :'/posts/logedin'
      
    end
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
        if post = current_user.posts.find(params[:id])
        "an edit post form #{current_user.id} is editing #{post.id}"
        else 
          redirect '/posts '
        end 
      end
    end

    

end
