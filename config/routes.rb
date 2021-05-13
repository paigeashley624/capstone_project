Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    # Users
    get "/users/:id", controller: "users", action: "show"
    post "/users", controller: "users", action: "create"
    delete "/users/:id", controller: "users", action: "destroy"

    # Sessions
    post "/sessions" => "sessions#create"

    # Books:
    get "/", controller: "books", action: "index"
    get "/books/:id", controller: "books", action: "show"
    post "/books/", controller: "books", action: "create"
    patch "/books/:id", controller: "books", action: "update"
    delete "/books/:id", controller: "books", action: "destroy"

    # User_Books
    get "/user_books/:id", controller: "user_books", action: "show"
    post "/user_books/", controller: "user_books", action: "create"
    delete "/user_books/:id", controller: "user_books", action: "destroy"
  end
end
