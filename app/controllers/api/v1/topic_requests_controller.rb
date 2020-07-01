class Api::V1::TopicRequestsController < ApplicationController
  def index
    topic_requests = TopicRequest.all
    render json: TopicRequestSerializer.new(topic_requests)
  end
end
