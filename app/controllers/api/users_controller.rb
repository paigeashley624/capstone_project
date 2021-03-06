class Api::UsersController < ApplicationController
  # User Create Action:
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  #User Show Action:
  def show
    id = params[:id]
    @user = User.find(id)
    render "show.json.jb"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User Account Deleted!" }
  end
end
