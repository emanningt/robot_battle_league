class NewCardController < ApplicationController

  get '/newcard' do
    erb :create_card
  end

  post '/card' do
    session[:card] = params[:card]
    redirect '/yourcard'
  end

  # "you made a card #{session[:email]}"

  # post '/makecard' do
  #   session[:makecard] = params[:makecard]
  #   redirect '/postcard'
  # end
  #
  # get '/postcard' do
  #   "You got #{session[cardname]} #{session[cardtype]}"
  # end

end
