class CardController < ApplicationController

  get '/redcards' do
    erb :"/cards/red"
  end

  get '/bluecards' do
    erb :"/cards/blue"
  end

  get '/yellowcards' do
    erb :"/cards/yellow"
  end

end
