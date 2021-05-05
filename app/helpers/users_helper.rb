module UsersHelper
  
  #お知らせを既読にする
  def notification_read(notification)
    notification.update(is_read: true)
  end

  #お知らせを未読にする
  def notification_unread(notification)
    notification.update(is_read: false)
  end

end
