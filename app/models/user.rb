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
  validates :username, presence: true , length: { maximum: 10 } 
  validates :email, presence: true
  validates :profile, length: { maximum: 200 } 
  #tutorial 13章画像のアップロード
  # validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
  #   message: "画像ファイルを選択して下さい" },
  #             size:         { less_than: 5.megabytes, message: "5MB以下のファイルをアップロードしてください" }
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