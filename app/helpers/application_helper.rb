module ApplicationHelper
  def check_has_notification
    # 未読(is_readがfalse)の場合trueを変えす
    @set_notifications.each do |notification|
      return true if notification.is_read == false
    end 
    return false
  end
end
