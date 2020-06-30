class Upvote < ApplicationRecord
  # attr_accessor :comment, :request_id, :student_id
  belongs_to :student, class_name: "User"
  belongs_to :request
end
