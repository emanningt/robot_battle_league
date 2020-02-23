class NewCardController < ApplicationController

  get '/cards' do
    @cards = Cards.all
    erb :'cards/index'
  end

  get '/cards/new' do
    erb :create_card
  end

  get 'cards/:id' do 
    @cards = Cards.find(params[:id])
    erb :'cards/show'
  end 

  post '/cards/cards/new' do
    binding.pry
    
    erb :'cardpost/making'
    
  end


end
