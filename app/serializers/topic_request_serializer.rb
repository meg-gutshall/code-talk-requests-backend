class TopicRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic, :module, :description, :upvotes, :student_id
  belongs_to :student, record_type: :user
end
