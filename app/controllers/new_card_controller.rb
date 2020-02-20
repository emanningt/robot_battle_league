class NewCardController < ApplicationController

  get '/newcard' do
    erb :create_card
  end

  post '/newcard' do
    @cards = Cards.new
    @cards.cardname = params[:card]
    @cards.cardtype = params[:type]
    @cards.save
    "your cars are #{session[:card]} "
  end

  get '/yourcard' do
    "Your card is "
  end



end
