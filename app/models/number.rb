class Number < ActiveRecord::Base

  after_create :invalidate_cache
  after_destroy :invalidate_cache
  after_update :invalidate_cache

  phony_normalize :phone_number, :default_country_code => 'US'

  validates :phone_number, presence: true, uniqueness: true

  def self.get_sms_messages
    @client = Twilio::REST::Client.new(ENV["twilio_account_sid"],
                                       ENV["twilio_auth_token"])
    sms_messages = @client.account.sms.messages.list.
        select do |sms|
      sms.status["received"] end


    sms_messages.map do |sms|
      sms.from
    end
  end

  def self.create_from_sms
    get_sms_messages.each do |sms|
      Number.create(phone_number: sms[2..-1])
    end unless get_sms_messages.nil?
  end

  private

  def invalidate_cache
    Rails.cache.clear
  end

end
