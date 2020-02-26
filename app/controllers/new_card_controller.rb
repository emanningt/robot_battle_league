class NewCardController < ApplicationController


  get '/cards/new' do
    erb :'create_card/new'
  end

  post '/cards' do 
    
    if !logged_in? 
      redirect "/"
     end 
     if params[:cardname] != "" && params[:cardtype] != "" && params[:requirements] != ""
      card_entry
      redirect "/cards/#{@cards.id}"
     else 
      redirect '/cards/new'
     end 
  end 

    get '/cards/:id' do 
      set_card
      erb :'create_card/show'
    end 

    get '/cards/:id/edit' do
      set_card
      if logged_in?
       if @cards.user == current_user
          erb :'create_card/edit'
       else 
        redirect "users/#{current_user.id}"
       end
      else
        redirect '/'
      end 
    end

     post '/cards/:id' do
      set_card
        if logged_in?
          if @cards.user == current_user
            @cards.update({cardname: params[:cardname],cardtype: params[:cardtype],requirements: params[:requirements]})
            redirect "cards/#{@cards.id}"
          else 
            redirect "/"
        end
      end 
    end 
   
    private

    def set_card
      @cards = Cards.find(params[:id])
    end 
  
end
