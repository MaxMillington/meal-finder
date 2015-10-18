
every 1.day, :at => '7am' do
  runner "Notify.day_check"
  end

every 1.day, :at => '7am' do
  runner "Number.create_from_sms"
end


#put this in the heroku scheuler to get this app running :

# rails runner "Notify.day_check" && rails runner "Number.create_from_sms"