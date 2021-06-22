class AddImageToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :image, :string
  end
end
