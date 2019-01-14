class FiguresController < ApplicationController
  # add controller methods
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all

    erb :'figures/new'
  end

  get '/figures' do
    figure = params[:figure]
    title = params[:title]
    landmark = params[:landmark]
    

  end

  post '/figures/new' do

  end
end
