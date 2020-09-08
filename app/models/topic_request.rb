class TopicRequest < ApplicationRecord
  # attr_accessor :topic, :description, :upvotes, :codepanion_id
  belongs_to :codepanion, class_name: "User"
end
