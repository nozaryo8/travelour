class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
