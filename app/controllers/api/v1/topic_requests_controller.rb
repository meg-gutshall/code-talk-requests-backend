class Api::V1::TopicRequestsController < ApplicationController
  def index
    topic_requests = TopicRequest.all
    render json: TopicRequestSerializer.new(topic_requests)
  end

  def create
    topic_request = TopicRequest.new(topic_request_params)
    if topic_request.save
      render json: { topic_request: TopicRequestSerializer.new(topic_request) }, status: :created
    else
      render json: { errors: topic_request.errors.full_messages }, status: :not_acceptable
    end
  end

  private
  def topic_request_params
    params.require(:topic_request).permit(:idea, :description, :upvotes, :codepanion_id)
  end
end
