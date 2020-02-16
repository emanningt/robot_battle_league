class CardController < ApplicationController

  get '/redcards' do
    erb :red
  end

  get '/bluecards' do
    erb :blue
  end

  get '/yellowcards' do
    erb :yellow
  end

end
