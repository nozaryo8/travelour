class Question < ApplicationRecord
  belongs_to :user

  has_many :answers, dependent: :destroy
  # question_tagsをたくさん持っている
  
  belongs_to :country
  # question_tagsをたくさん持っていて、question_tagsを介してtagsをたくさん持っている
  belongs_to :tag 
  has_many :evaluations, dependent: :destroy
  
  validates :title, presence: true,length: { maximum: 40 }
  validates :body, presence: true
  validates :tag_id ,presence: true
end
