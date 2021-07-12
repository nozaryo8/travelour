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
  mount_uploader :image, ImageUploader

  def self.last_week # 先週のいいねの数が多い順に取得
    evaluation = Question.joins(:evaluations).where(evaluations: { created_at: 0.days.ago.prev_week..0.days.ago}).group(:id).order("count(*) desc").limit(10)
    # もしいいねが見つからなかった場合見つかるまで1週間づつ戻って探す
    if evaluation == [] || evaluation.size < 5
      1.step do |i|
        evaluation = Question.joins(:evaluations).where(evaluations: { created_at: (i+1).weeks.ago..i.weeks.ago}).group(:id).order("count(*) desc").limit(10)
        return evaluation if evaluation != [] && evaluation.size >= 5
      end
    end
    return evaluation 
  end

  def related_questions
    #インスタンスメソッド
    Question.where(country_id: self.country_id).where.not(id: self.id).order(updated_at: :desc).limit(5)
    # Question.where(country_id: self.country_id).where.not(id: self.id).or(Question.where(tag_id: self.tag_id).where.not(id: self.id)).order(updated_at: :desc).limit(5)
  end

  def self.recentry_resolved_questions
    #クラスメソッド
    self.where.not(best_answer_id: nil).order(updated_at: :desc).limit(10)
  end
end