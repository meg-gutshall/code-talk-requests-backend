class ChangeTopicRequests < ActiveRecord::Migration[6.0]
  def change
    rename_column :topic_requests, :topic, :idea
    change_column_default :topic_requests, :upvotes, from: nil, to: 0
  end
end
