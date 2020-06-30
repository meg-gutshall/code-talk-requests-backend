class CreateUpvotes < ActiveRecord::Migration[6.0]
  def change
    create_table :upvotes do |t|
      t.text :comment
      t.references :student
      t.references :request

      t.timestamps null: false
    end
  end
end
