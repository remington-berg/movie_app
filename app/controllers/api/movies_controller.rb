class Api::MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    render "movies.json.jb"
  end

  def movie_first
    @movie_first = Movie.first
    render "movie_first.json.jb"
  end

  def movie_year_order
    @movie_year = Movie.order(:year).all
    render "movie_year.json.jb"
  end
end
