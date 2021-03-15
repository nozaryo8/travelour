class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :reactions, dependent: :destroy
end
