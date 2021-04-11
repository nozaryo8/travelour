class AddCountryIdToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :questions, :country, null: true, foreign_key: true
    add_reference :questions, :tag, null: true, foreign_key: true
  end
end
