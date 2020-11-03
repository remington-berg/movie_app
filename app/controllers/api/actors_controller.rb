class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all

    render "index.json.jb"
  end

  def create
    @actors = Actor.create({
      first_name: params["first_name"], last_name: params["last_name"], known_for: params["known_for"], gender: params["gender"],
      age: params["age"],
    })
    render "show.json.jb"
  end

  def show
    input = params[:id].to_i
    @actors = Actor.find_by(id: input)
    render "show.json.jb"
  end

  def update
    input = params["id"]
    @actors = Actor.find_by(id: input)
    @actors.first_name = params["first_name"] || @actors.first_name
    @actors.last_name = params["last_name"] || @actors.last_name
    @actors.known_for = params["known_for"] || @actors.known_for
    @actors.gender = params["gender"] || @actors.gender
    @actors.age = params["age"] || @actors.age
    @actors.save
    render "show.json.jb"
  end

  def destroy
    input = params["id"]
    @actors = Actor.find_by(id: input)
    @actors.destroy
    render json: { message: "ACTOR DESTROYED!!!!" }
  end
end
