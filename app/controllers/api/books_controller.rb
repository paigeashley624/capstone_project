class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @book = Book.find(id)
    render "show.json.jb"
  end

  def create
    @book = Book.new(
      title: params[:title],
      author_name: params[:author_name],
      genre: params[:genre],
      img_url: params[:img_url],
      overview: params[:overview],
    )
    if @book.save
      render "show.json.jb"
    else
      render json: { errors: @book.error.full_messages }, status: 406
    end
  end

  def update
    id = params[:id]
    @book = Book.find(id)
    @book.title = params[:title] || @book.title
    @book.author_name = params[:author_name] || @book.author_name
    @book.genre = params[:genre] || @book.genre
    @book.img_url = params[:img_url] || @book.img_url
    @book.overview = params[:overview] || @book.overview

    if @book.save
      render "show.json.jb"
    else
      render json: { errors: @book.error.full_messages }, status: 406
    end
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    @book.destroy
    render json: { message: "Book deleted!" }
  end
end
