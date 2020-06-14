class Api::V1::RequestsController < ApplicationController
  def index
    requests = Request.all
    render json: RequestSerializer.new(requests)
  end
end
