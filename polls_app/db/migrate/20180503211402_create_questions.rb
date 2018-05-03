class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :inquiry, null: false
      t.integer :poll_id, null: false
    end
    
    add_index :questions, :poll_id
  end
end
