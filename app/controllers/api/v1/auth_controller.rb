class Api::V1::AuthController < ApplicationController
  # ! Comment auth back in
  skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by(email_address: login_params[:email_address])
    if user && user.authenticate(login_params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { message: "Invalid email address or password." }, status: :unauthorized
    end
  end

  def destroy
    token.clear
    render json: { message: "You have been successfully logged out." }, status: :accepted
  end

  private
    def login_params
      params.require(:user).permit(:email_address, :password)
    end
end