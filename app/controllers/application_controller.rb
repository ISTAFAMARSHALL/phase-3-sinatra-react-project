class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/genres" do
    genres = Genre.all
    genres.to_json(include: :games)
  end

  get "/games" do
    games = Game.all
    games.to_json(include: :genre)
  end

  get '/genres/:id' do
    genre = Genre.find(params[:id])
    genre.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

  post "/genres" do
    new_genre = Genre.create(name: params[:name])
    new_genre.to_json(include: :games)
  end

  post "/games" do
    new_game = Game.create(name: params[:name], genre_id: params[:genre_id], score: params[:score], completion_percentage: params[:completion_percentage], platinum: params[:platinum], comment: params[:comment])
    new_game.to_json(include: :genre)
  end

  patch '/genres/:id' do
    updated_genre = Genre.find(params[:id])
    updated_genre.update(name: params[:name])
    updated_genre.to_json
  end

  patch '/games/:id' do
    updated_games = Game.find(params[:id])
    updated_games.update(name: params[:name], genre_id: params[:genre_id], score: params[:score], completion_percentage: params[:completion_percentage], platinum: params[:platinum], comment: params[:comment])
    updated_games.to_json(include: :genre)
  end

  delete '/genres/:id' do
    delete_genre = Genre.find(params[:id])
    delete_genre.destroy
    delete_genre.to_json
  end

  delete '/games/:id' do
    delete_game = Game.find(params[:id])
    delete_game.destroy
    delete_game.to_json
  end
  
end
