class NotificationsController < ApplicationController
  def update
    notification = Notification.find(params[:id])
    notification.is_read = true
    notification.save
    redirect_to notification.url
  end
end
