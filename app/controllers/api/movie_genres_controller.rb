class Api::MovieGenresController < ApplicationController
  def create
    @movie_genre = MovieGenre.create(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    render "show.json.jb"
  end
end
