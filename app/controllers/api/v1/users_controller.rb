class Api::V1::UsersController < ApplicationController
  # TODO: Look into the JSON output formatting
  skip_before_action :authorized, only: [:create]

  def index
    users = User.all
    render json: { users: UserSerializer.new(users) }
  end
  
  def create
    user = User.new(user_params)
    if user.save
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :not_acceptable
    end
  end

  def show
    user = User.find(params[:id])
    if user
      render json: { user: UserSerializer.new(user) }, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
    end
  end
  
  private
    def user_params
      params.permit(:first_name, :last_name, :email_address, :password_digest, :role)
    end
end
