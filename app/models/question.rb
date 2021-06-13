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
    evaluation = Question.joins(:evaluations).where(evaluations: { created_at: 0.days.ago.prev_week..0.days.ago.prev_week(:sunday)}).group(:id).order("count(*) desc").limit(10)
    # もしいいねが見つからなかった場合見つかるまで1週間づつ戻って探す
    if evaluation == [] || evaluation.size < 5
      1.step do |i|
        evaluation = Question.joins(:evaluations).where(evaluations: { created_at: i.weeks.ago.prev_week..i.weeks.ago.prev_week(:sunday)}).group(:id).order("count(*) desc").limit(10)
        return evaluation if evaluation != [] && evaluation.size >= 5
      end
    end
    return evaluation 
  end
end