class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify
    client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"],
                                      ENV["TWILIO_AUTH_TOKEN"])
    client.messages.create(from: "15702854146",
                           to: "15706902302",
                           body: "Hello")
    render plain: message.status
  end


end