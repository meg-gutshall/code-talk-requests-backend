class ApplicationController < ActionController::API
  # ! Comment auth back in
  before_action :authorized

  def encode_token(payload)
    payload[:iat] = Time.now.to_i
    payload[:exp] = Time.new.to_i + 86400
    payload[:leeway] = 90
    JWT.encode(payload, ENV["JWT_SECRET"])
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(" ")[1]
      begin
        JWT.decode(token, ENV["JWT_SECRET"], true, { verify_iat: true, algorithm: 'HS256' })
      rescue JWT::DecodeError
        nil
      rescue JWT::ExpiredSignature
        render json: { message: "Your session has expired. Please log in again." }, status: :unauthorized
      rescue JWT::InvalidIatError
        render json: { message: "Please log in." }, status: :unauthorized
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    # TODO: Link or reroute to login/sign up page
    # Read: https://medium.com/javascript-by-doing/create-a-modern-javascript-router-805fc14d084d
    render json: { message: "Please log in." }, status: :unauthorized unless logged_in?
  end
end
