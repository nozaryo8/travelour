class Question < ApplicationRecord
  belongs_to :user

  has_many :answers, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  belongs_to :country
  belongs_to :tag 
  has_many :evaluations, dependent: :destroy
  
  validates :title, presence: true,length: { maximum: 40 }
  validates :body, presence: true
  validates :tag_id ,presence: true
  is_impressionable
end
