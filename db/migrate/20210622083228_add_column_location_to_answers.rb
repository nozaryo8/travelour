class AddColumnLocationToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :latitude, :float
    add_column :answers, :longitude, :float
    add_column :answers, :location_name, :string
  end
end
