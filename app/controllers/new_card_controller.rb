class NewCardController < ApplicationController

  get '/cards' do
    @cards = Cards.all
    erb :'cards/index'
  end

  get '/cards/new' do
    erb :'create_card/new'
  end

  get 'cards/:id' do 
    @cards = Cards.find(params[:id])
    erb :'cards/show'
  end 

  post '/cards/cards/new' do
    #binding.pry
    # card =  Card.new(cardname: params[:card][:cardname], cardetype: params[:card][:cardetype], requirements: params[:card][:requirements])
    # params[:card].each do |card_data|
       
    erb :'cardpost/making'
    
  end


end
