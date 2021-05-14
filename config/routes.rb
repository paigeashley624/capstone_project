Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  root "api/books#index" 
  # added in order for the main heroku page to show the index 
  
  namespace :api do
    
    # Users
    get "/users/:id", controller: "users", action: "show"
    post "/users", controller: "users", action: "create"
    delete "/users/:id", controller: "users", action: "destroy"

    # Sessions
    post "/sessions" => "sessions#create"

    # Books:
    get "/books", controller: "books", action: "index"
    # changed above route from /books in hopes of getting heroku to run correctly
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
