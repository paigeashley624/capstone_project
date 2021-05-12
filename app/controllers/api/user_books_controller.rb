class Api::UserBooksController < ApplicationController
  def show
    id = params[:id]
    @user_book = UserBook.find(id)
    render "show.json.jb"
  end

  def create
    @user_book = UserBook.new(
      user_id: params[:user_id],
      book_id: params[:book_id],
      status: params[:status],
    )
    if @user_book.save
      render "show.json.jb"
    else
      render json: { errors: @user_book.error.full_messages }, status: 406
    end
  end

  # a conditional needs to be made for the create that will not allow a duplicate book to be added to a users stash

  def destroy
    @user_book = UserBook.find_by(id: params[:id])
    @user_book.destroy
    render json: { message: "Book deleted from stash!" }
  end
end
