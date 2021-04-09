class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @books = Book.find(id)
    render "show.json.jb"
  end

  def create
    @books = Book.new(
      title: params[:title],
      author_name: params[:author_name],
      genre: params[:genre],
      img_url: params[:img_url],
    )
    if @books.save
      render "show.json.jb"
    else
      render json: { errors: @books.error.full_messages }, status: 406
    end
  end

  def update
    id = params[:id]
    @books = Book.find(id)
    @books.title = params[:title] || @books.title
    @books.author_name = params[:author_name] || @books.author_name
    @books.genre = params[:genre] || @books.genre
    @books.img_url = params[:img_url] || @books.img_url
    # book title is not updating *****
    if @books.save
      render "show.json.jb"
    else
      render json: { errors: @books.error.full_messages }, status: 406
    end
  end

  def destroy
  end
end
hhh