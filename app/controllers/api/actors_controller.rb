class Api::ActorsController < ApplicationController
  def actor_one
    @actor = Actor.find_by(id: 1)

    render "actor.json.jb"
  end
end
