class NotificationsController < ApplicationController
  def update
    # TODO: 既読の仕方を考える
    notification = Notification.find(params[:id])
    notification.is_read = true
    notification.save
    redirect_to notification.url
  end
end
