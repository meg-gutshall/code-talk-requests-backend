class CreateTopicRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_requests do |t|
      t.string :topic
      t.string :module
      # t.string :section
      t.text :description
      t.integer :upvotes
      t.references :student

      t.timestamps null: false
    end
  end
end
