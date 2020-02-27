class NewCardController < ApplicationController

  get '/cards' do 
    @cards = Cards.all
      erb :'create_card/index'
  end 

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
       if authorized_to_edit?(@cards)
          erb :'create_card/edit'
       else 
        redirect "users/#{current_user.id}"
       end
      else
        redirect 'cards'
      end 
    end

     patch '/cards/:id' do
      set_card
        if logged_in?
          if authorized_to_edit?(@cards) 
            @cards.update({cardname: params[:cardname],cardtype: params[:cardtype],requirements: params[:requirements]})
            redirect "cards/#{@cards.id}"
          else 
            redirect "users/#{current_user.id}"
        end
      else
        redirect '/'
      end 
    end 

    delete '/cards/:id' do 
      set_card
      if authorized_to_edit?(@cards)
        @cards.destroy
      else 
        redirect '/cards'
      end 
    end 

    private

    def set_card
      @cards = Cards.find(params[:id])
    end 
  
end
