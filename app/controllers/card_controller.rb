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

  get '/cam_kick' do 
    erb :"/attack/cam_kick"
  end 

  get '/corkscrew' do 
    erb :'/attack/corkscrew'
  end 
  
  get '/eee' do 
    erb :'/attack/eee'
  end 

  get '/flange' do 
    erb :'/attack/flange'
  end 
  
  get '/haymake' do 
    erb :'/attack/heymake'
  end 

  get '/headbut' do 
    erb :'/attack/headbut'
  end 

  get '/jointjab' do 
    erb :'/attack/jointjab'
  end 

  get '/kinematic' do 
    erb :'/attack/kinematic'
  end 

  get '/launcher' do 
    erb :'/attack/launcher'
  end 

  get '/orbital' do 
    erb :'/attack/orbital'
  end 

  get '/piston' do 
    erb :'/attack/piston'
  end 

  get '/ubold' do 
    erb :'/attack/ubold'
  end 

  get '/knee' do 
    erb :'/attack/knee'
  end 

end
