class TopicRequest < ApplicationRecord
  # attr_accessor :topic, :module, :description, :student_id
  belongs_to :student, class_name: "User"
end
