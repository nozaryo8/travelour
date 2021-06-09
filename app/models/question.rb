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

  def self.last_week # 先週のいいねの数が多い順に取得
    evaluation = Question.joins(:evaluations).where(evaluations: { created_at: 0.days.ago.prev_month..0.days.ago}).group(:id).order("count(*) desc").limit(10)
  end
end
