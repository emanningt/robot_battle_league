class NewCardController < ApplicationController


  get '/cards/new' do
    erb :'create_card/new'
  end

  post '/cards/cards' do 
    
     if !logged_in? 
      redirect "/"
     end 
     if params[:cardname] != ""
      card_entry
      redirect "/cards/#{@cards.id}"
     else 
      redirect '/cards/new'
     end 
  end 

    get '/cards/:id' do 
      @cards = Cards.find(params[:id])
      erb :'create_card/show'
    end 

    get '/cards/cards/:id/edit' do
      @cards = Cards.find(params[:id])
      if logged_in?
       if @cards.user == current_user
          erb :'create_card/edit'
       else 
        redirect "posts/#{current_user.id}"
       end
      else
        redirect '/'
      end 
    end

    patch '/cards/:id' do
      @cards = Cards.find(params[:id])
      if logged_in?

        if @cards.user == current_user
            @cards.update({cardname: params[:cardname],cardtype: params[:cardtype],requirements: params[:requirements]})
            redirect "cards/#{@cards.id}"
        else 
          redirect "posts"
        end

      end 
    end

end
