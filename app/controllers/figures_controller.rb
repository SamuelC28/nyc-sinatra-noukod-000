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

    @figure = Figure.create(figure)
    @figure.titles.find_or_create_by(name: title[:name])
    @figure.landmarks.find_or_create_by(name: landmark[:name])

    redirect "/figures/#{@figure.id}"
  end

  post '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/:id' do
    @figure = Figure.find params[:id]
    erb :'figures/show'
  end
  post '/figures/new' do

  end
end
