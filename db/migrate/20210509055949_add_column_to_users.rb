class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rank, :integer
    add_column :users, :exp, :integer
  end
end
