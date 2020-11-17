Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    post "/movie_genres" => "movie_genres#create"

    post "/users" => "users#create"
    # get "/users" => "users#index"
    # get "/users/:id" => "users#show"
    # patch "/users/:id" => "users#update"
    # delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"
    # get "/sessions" => "sessions#index"
    # get "/sessions/:id" => "sessions#show"
    # patch "/sessions/:id" => "sessions#update"
    # delete "/sessions/:id" => "sessions#destroy"

    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
  end
end
