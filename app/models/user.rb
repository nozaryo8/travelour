class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :timeoutable, :trackable, :omniauthable, omniauth_providers:[:twitter,:facebook]

  has_many :questions, dependent: :destroy

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
    user
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