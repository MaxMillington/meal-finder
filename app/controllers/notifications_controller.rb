require 'twilio-ruby'

class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def monday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.monday}" unless location.monday.nil?
    end.compact

    @numbers.each do |number|
        client.messages.create(from: "15702854146",
                               to: "1#{number.phone_number.delete '-'}",
                               body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def tuesday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.tuesday}" unless location.tuesday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def wednesday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.wednesday}" unless location.wednesday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def thursday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.thursday}" unless location.thursday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def friday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.friday}" unless location.friday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def saturday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.saturday}" unless location.saturday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

  def sunday
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    message = @locations.map do |location|
      "#{location.name}: #{location.sunday}" unless location.sunday.nil?
    end.compact

    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "1#{number.phone_number.delete '-'}",
                             body: "#{message.join(', ')}")
    end
    redirect_to admin_dashboard_path
  end

end