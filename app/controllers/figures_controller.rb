class FiguresController < ApplicationController
  # add controller methods
  get '/figures/new' do
    @figures= Figures.all 
    erb :new 
  end

  get 'figures'

  end

  post '/figures/new' do

  end
end
