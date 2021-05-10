class Notification < ApplicationRecord
  belongs_to :user
  
  def create_notification(user_id, message, url)
    self.create(user_id: user_id, message: message,url: url)
  end
end
