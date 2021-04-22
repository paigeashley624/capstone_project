class Api::UserBooksController < ApplicationController
  def create
    @user_books = User_book.new(
      user_id: params[:user_id]
      book_id: params[:book_id]
      status: params[:status]
    )
    if user_books.save
      render json: {New item created!}
    else 
      render json: {errors: @user_books.error.full_messages}, status: 406
    end
  end

  #is this needed???? will make a view if needed
  def show
    id = params[:id]
    @user_books = UserBook.find(id)
    render "show.json.jb"
  end
end
