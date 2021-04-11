class AddBestAnswerIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    # デフォルトでは完了していないnilを入れます。完了する際に1を入れます
    add_column :questions, :best_answer_id, :integer
    
  end
end
