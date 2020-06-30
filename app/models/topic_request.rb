class TopicRequest < ApplicationRecord
  # attr_accessor :topic, :module, :description, :student_id
  belongs_to :student, class_name: "User"

  has_many :upvotes
  has_many :supporting_students, through: :upvotes, source: :student
end
