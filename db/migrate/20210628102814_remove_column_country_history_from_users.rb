class RemoveColumnCountryHistoryFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :country_history
  end
end
