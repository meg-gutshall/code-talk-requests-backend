class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :topic
      t.string :module
      # t.string :section
      t.text :description
      t.references :student

      t.timestamps null: false
    end
  end
end
