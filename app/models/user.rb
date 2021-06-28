class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :timeoutable, :trackable, :omniauthable, omniauth_providers:[:twitter,:facebook]

  has_many :questions, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user
  has_many :bookmarks, dependent: :destroy
  has_many :country_histories, dependent: :destroy
  validates :username, presence: true , length: { maximum: 20 } 
  validates :email, presence: true
  validates :profile, length: { maximum: 200 } 


  
  mount_uploader :image, ImageUploader
  has_one_attached :image
  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        password: Devise.friendly_token[0, 20],
        username: auth.info.nickname
      )
    end
   
  end

  def self.guest
    find_or_create_by!(email: 'guest@gmail.com') do |user|
      user.username = 'ゲストユーザー'
      user.password = SecureRandom.urlsafe_base64
    end
  end

  def already_evaluation?(question)
    #current_userが関係しているevaluationがquestion_idをもっているか？
    #selfにはcurrent_userが入る。
    self.evaluations.exists?(question_id: question.id)
  end

  def already_good?(answer)
    self.goods.exists?(answer_id: answer.id)
  end

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

  def matchers
    followings & followers
  end

  def get_exp(exp)
    self.exp += exp
    self.save
  end

  def bookmarked_by?(question)
    #selfは省略できる
    bookmarks.where(question_id: question.id).exists?
  end

  def check_level_up
    if rank_setting = RankSetting.find_by(rank: self.rank + 1)
      while true do
        if rank_setting.necessary_exp <= self.exp
          self.rank += 1
          self.save
        else
          break
        end
      end
    end
  end

  #TODO: 国ごとにグルーピングする
  def grouping_country
    Question.where(user_id: self.id).group(:country_id).count
  end


  # def self.from_omniauth(auth)
  #   find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
  #     user.provider = auth["provider"]
  #     user.uid = auth["uid"]
  #     user.username = auth["info"]["nickname"]
  #   end
  # end

  # def self.new_with_session(params, session)
  #   if session["devise.user_attributes"]
  #     new(session["devise.user_attributes"]) do |user|
  #       user.attributes = params
  #     end
  #   else
  #     super
  #   end
  # end
end