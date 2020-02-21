class NewCardController < ApplicationController

  get '/newcard' do
    erb :create_card
  end

  post '/newcard' do
    @user = Cards.new
    @user.cardname
    @user.save
    
    erb :'cardpost/making'
    
  end


end
