class TopicRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :idea, :description, :upvotes, :codepanion_id
  belongs_to :codepanion, record_type: :user
end
