class Api::V1::RequestsController < ApplicationController
  def index
    topic_requests = TopicRequest.all
    render json: TopicRequestSerializer.new(topic_requests)
  end
end
