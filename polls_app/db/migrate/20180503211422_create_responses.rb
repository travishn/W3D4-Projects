class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :response_id, null: false
      t.integer :user_id, null: false
    end
    add_index :responses, :response_id
    add_index :responses, :user_id
  end
end
