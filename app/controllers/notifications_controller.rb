# require 'twilio-ruby'

class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def monday
    Notify.monday

    redirect_to admin_dashboard_path
  end

  def tuesday
    Notify.tuesday
    redirect_to admin_dashboard_path
  end

  def wednesday
    Notify.wednesday
    redirect_to admin_dashboard_path
  end

  def thursday
    Notify.thursday
    redirect_to admin_dashboard_path
  end

  def friday
    Notify.friday
    redirect_to admin_dashboard_path
  end

  def saturday
    Notify.saturday
    redirect_to admin_dashboard_path
  end

  def sunday
    Notify.sunday
    redirect_to admin_dashboard_path
  end

end