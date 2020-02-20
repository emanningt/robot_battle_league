class RulesController < ApplicationController

    get '/rules' do 
        erb :'/rules/home'
    end 

    get '/goal' do 
        erb :'/rules/Goal'
    end

    get '/game_setup' do 
        erb :'/rules/setup'
    end 

    get '/gameplay' do 
        erb :'/rules/gameplay'
    end 

    get '/altrules' do 
        erb :'/rules/alter_rules'
    end 


end 


