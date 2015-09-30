# require 'twilio-ruby'

class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def twilio
    Notify.day_check

    redirect_to admin_dashboard_path
  end


end