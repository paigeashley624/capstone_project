class Api::UserBooksController < ApplicationController
  def show
    id = params[:id]
    @userbook = UserBook.find(id)
    render "show.json.jb"
  end

  def create
    @userbook = UserBook.new(
      user_id: params[:user_id],
      book_id: params[:book_id],
      status: params[:status],
    )
    if @userbook.save
      render "show.json.jb"
    else
      render json: { errors: @userbook.error.full_messages }, status: 406
    end
  end

  def destroy
    @userbook = UserBook.find_by(id: params[:id])
    @userbook.destroy
    render json: { message: "Book deleted from stash!" }
  end
end
