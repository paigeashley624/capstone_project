class Api::UserBooksController < ApplicationController
  def show
    id = params[:id]
    @user_book = UserBook.find(id)
    render "show.json.jb"
  end

  def create
    @user_book = User_book.new(
      user_id: params[:user_id],
      book_id: params[:book_id],
      status: params[:status],
    )
    if user_book.save
      render json: "show.json.jb"
    else
      render json: { errors: @user_book.error.full_messages }, status: 406
    end
  end

  def destroy
    @user_book = User_book.find_by(id: params[:id])
    @user_book.destroy
    render json: { message: "Book deleted from stash!" }
  end
end
