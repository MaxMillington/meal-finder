# require 'twilio-ruby'
#
# class TwilioController < ApplicationController
#   include Webhookable
#
#   after_filter :set_header
#
#   skip_before_action :verify_authenticity_token
#
#   def connect_customer
#     response = Twilio::TwiML::Response.new do |r|
#       r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
#       r.Play 'http://linode.rabasa.com/cantina.mp3'
#     end
#
#     render_twiml response
#   end
# end

# require "twilio-ruby"
#
# class TwilioController < ApplicationController
#   include Webhookable
#
#   after_filter :set_header
#
#   skip_before_action :verify_authenticity_token
#
#   def connect_customer
#     # mocking a db of customers, connect to real db in production
#     customers = {
#         "123" => { "phone_number" => "5706902302" },
#         "456" => { "phone_number" => "+15553333" }
#     }
#     # accessing mocked customers db
#     customer = customers[params[:id]]
#     response = Twilio::TwiML::Response.new do |r|
#       r.Say "Hello. Connecting you to the customer now.", :voice => "alice"
#       r.Dial :callerId => "15706902302" do |d|
#         d.Number customer["phone_number"]
#       end
#     end
#
#     render_twiml response
#   end
# end
