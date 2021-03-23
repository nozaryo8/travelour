class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :question

  valitdates_uniquness_of :question_id, scope: :user_id
end
