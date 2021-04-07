Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    # Users
    post "/users", controller: "users", action: "create"

    # Sessions
    post "/sessions" => "sessions#create"
  end
end
