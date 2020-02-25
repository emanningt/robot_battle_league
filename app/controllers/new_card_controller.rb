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
      redirect "/create_card/#{@cards.id}"
     else 
      redirect '/cards/new'
     end 

     

  end 


end
