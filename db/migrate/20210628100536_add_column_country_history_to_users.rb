class AddColumnCountryHistoryToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :country_history, :text
  end
end
