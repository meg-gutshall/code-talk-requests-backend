class Api::V1::UpvotesController < ApplicationController
  def index
    upvotes = Upvote.all
    render json: upvotes
  end
end
