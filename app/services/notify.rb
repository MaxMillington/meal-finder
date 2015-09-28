class Notify

  def self.monday
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
  end

  def self.tuesday
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


  end

  def self.wednesday
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
  end

  def self.thursday
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
  end

  def self.friday
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
  end

  def self.saturday
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
  end

  def self.sunday
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
  end
end

