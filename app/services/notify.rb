class Notify

  def self.day_check
    @numbers = Number.all
    client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                      ENV["twilio_auth_token"])
    @locations = Location.all

    if Time.now.monday?
      message = @locations.map do |location|
        "#{location.name}: #{location.monday}" unless location.monday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.tuesday?
      message = @locations.map do |location|
        "#{location.name}: #{location.tuesday}" unless location.tuesday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.wednesday?
      message = @locations.map do |location|
        "#{location.name}: #{location.wednesday}" unless location.wednesday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.thursday?
      message = @locations.map do |location|
        "#{location.name}: #{location.thursday}" unless location.thursday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.friday?
      message = @locations.map do |location|
        "#{location.name}: #{location.friday}" unless location.friday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.saturday?
      message = @locations.map do |location|
        "#{location.name}: #{location.saturday}" unless location.saturday.nil?
      end.compact

      send_message(message, client)
    elsif Time.now.sunday?
      message = @locations.map do |location|
        "#{location.name}: #{location.sunday}" unless location.sunday.nil?
      end.compact

      send_message(message, client)
    end
  end

  private

  def self.send_message(message, client)
    @numbers.each do |number|
      client.messages.create(from: "15702854146",
                             to: "#{number.phone_number.delete '-, +'}",
                             body: "#{message.join(', ')}")
    end
  end

end

