class AddColumnLocationToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :latitude, :float
    add_column :questions, :longitude, :float
    add_column :questions, :location_name, :string
  end
end
