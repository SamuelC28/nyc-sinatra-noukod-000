class FiguresController < ApplicationController
  # add controller methods
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all

      erb :'figures/new'
  end

  get 'figures'

  end

  post '/figures/new' do

  end
end
