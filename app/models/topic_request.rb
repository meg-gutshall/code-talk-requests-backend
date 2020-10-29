class TopicRequest < ApplicationRecord
  # attr_accessor :idea, :description, :upvotes, :codepanion_id
  belongs_to :codepanion, class_name: "User"
end
