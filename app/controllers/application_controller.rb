require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end 
  end

  helpers do

      def logged_in?
        !!current_user
      end

      def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end

      def login(email, password)
        user = User.find_by(:email => email)
        if user && user.authenticate(password)
          session[:email] = user.email
          else
          redirect '/login'
        end
      end

      def logout!
        session.clear
      end

      def card_entry
        @cards = Cards.create(cardname: params[:cardname],cardtype: params[:cardtype],requirements: params[:requirements], user_id: current_user.id)
      end 
      
      def authorized_to_edit?(cards)
        cards.user == current_user
      end 
      
      def redirect_if_not_loggedin
        if !logged_in? 
          redirect "/"
         end 
        end 
  end

  

end
