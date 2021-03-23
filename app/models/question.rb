class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  # question_tagsをたくさん持っている
  has_many :question_tags, dependent: :destroy
  # question_tagsをたくさん持っていて、question_tagsを介してtagsをたくさん持っている
  has_many :tags , through: :question_tags
  has_many :evaluations, dependent: :destroy
  accepts_nested_attributes_for :question_tags, :allow_destroy => true
  validates :title, presence: true
  validates :body, presence: true
end
