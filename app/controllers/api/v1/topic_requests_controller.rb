class Api::V1::TopicRequestsController < ApplicationController
  def index
    topic_requests = TopicRequest.all
    render json: TopicRequestSerializer.new(topic_requests)
  end

  private
  def topic_request_params
    params.require(:topic_request).permit(:topic, :module, :description, :upvotes, :student_id)
  end
end
