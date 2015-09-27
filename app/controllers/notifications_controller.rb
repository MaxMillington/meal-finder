require 'twilio-ruby'

class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.description}"
    end
    
    @numbers.each do |number|
        client.messages.create(from: "15702854146",
                               to: "1#{number.phone_number.delete '-'}",
                               body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

end