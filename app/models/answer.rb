class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :reactions, dependent: :destroy
  has_many :goods, dependent: :destroy
  validates :body, presence: true
  mount_uploader :image, ImageUploader
end
