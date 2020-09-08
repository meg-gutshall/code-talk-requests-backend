class TopicRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic, :description, :upvotes, :codepanion_id
  belongs_to :codepanion, record_type: :user
end
