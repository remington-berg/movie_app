Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/actor_one" => "actors#actor_one"
    get "/movies" => "movies#movies"
    get "/movie_first" => "movies#movie_first"
    get "/movie_year" => "movies#movie_year_order"
    get "single_actor" => "actors#single"
    get "single_actor/:id" => "actors#single"
    post "single_actor" => "actors#single"
  end
end
