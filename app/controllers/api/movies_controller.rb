class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies = @movies.where(english: true)

    render "index.json.jb"
  end

  def create
    @movies = Movie.new({
      title: params["title"], year: params["year"], plot: params["plot"], director: params["director"], english: params["english"],
    })
    if @movies.save
      render "show.json.jb"
    else
      render json: { error: @movies.errors.full_messages }, status: :unprocessable_entity
    end
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
    @movies.director = params["director"] || @movies.director
    @movies.english = params["english"] || @movies.english
    if @movies.save
      render "show.json.jb"
    else
      render json: { error: @movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.destroy
    render json: { message: "MOVIE DESTROYED!!!!" }
  end
end
