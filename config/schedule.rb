# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron


every :monday, :at => '7am' do
  runner "Task.do_something_great"
end

every :tuesday, :at => '7am' do
  runner "Task.do_something_great"
end

every :wednesday, :at => '7am' do
  runner "Task.do_something_great"
end

every :thursday, :at => '7am' do
  runner "Task.do_something_great"
end

every :friday, :at => '7am' do
  runner "Task.do_something_great"
end

every :saturday, :at => '7am' do
  runner "Task.do_something_great"
end

every :sunday, :at => '7am' do
  runner "Task.do_something_great"
end


# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
