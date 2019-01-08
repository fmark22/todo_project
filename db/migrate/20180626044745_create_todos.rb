class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :content
      t.integer :user_id, default: 1
      t.boolean :confirm, default: false
      
      t.timestamps
    end
  end
end
