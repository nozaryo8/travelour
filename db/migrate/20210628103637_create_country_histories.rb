class CreateCountryHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :country_histories do |t|
      # referencesにすることでテーブルを参照して最適化する
      t.references :user, foreign_key: true
      t.references :country, foreign_key: true
      t.string :city_name
      t.date :stay_begin
      t.date :stay_end

      t.timestamps
    end
  end
end
