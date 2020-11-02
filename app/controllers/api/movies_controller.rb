class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render "index.json.jb"
  end

  def create
    @movies = Movie.create({
      title: params["title"], year: params["year"], plot: params["plot"],
    })
    render "show.json.jb"
  end

  def show
    input = params[:id].to_i
    @movies = Movie.find_by(id: input)
    render "show.json.jb"
  end

  def update
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.title = params["title"] || @movies.title
    @movies.year = params["year"] || @movies.year
    @movies.plot = params["plot"] || @movies.plot
    @movies.save
    render "show.json.jb"
  end

  def destroy
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.destroy
    render json: { message: "MOVIE DESTROYED!!!!" }
  end
end
