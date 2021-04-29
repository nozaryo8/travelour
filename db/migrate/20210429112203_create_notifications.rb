class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.integer :user_id, foreign_key: true
      t.boolean :is_read, default: false ,null: false
      t.string :message
      t.string :url

      t.timestamps
    end
  end
end
