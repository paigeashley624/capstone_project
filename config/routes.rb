Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    # Users
    post "/users", controller: "users", action: "create"

    # Sessions
    post "/sessions" => "sessions#create"

    # Books:
    get "/books", controller: "books", action: "index"
    get "/books/:id", controller: "books", action: "show"
    post "/books", controller: "books", action: "create"
    patch "/books/:id", controller: "books", action: "update"
    delete "/books/:id", controller: "books", action: "destroy"

    # User_Books
    post "/user_books", controller: "user_books", action: "create"
  end
end
