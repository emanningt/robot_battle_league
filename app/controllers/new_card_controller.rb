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
      erb :'create_card/edit'
    end

end
