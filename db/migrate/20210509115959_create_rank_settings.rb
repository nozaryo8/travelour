class CreateRankSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :rank_settings do |t|
      t.integer :rank
      t.integer :necessary_exp

      t.timestamps
    end
  end
end
