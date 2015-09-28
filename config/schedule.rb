
every :monday, :at => '7am' do
  runner "Notify.monday"
end

every :tuesday, :at => '7am' do
  runner "Notify.tuesday"
end

every :wednesday, :at => '7am' do
  runner "Notify.wednesday"
end

every :thursday, :at => '7am' do
  runner "Notify.thursday"
end

every :friday, :at => '7am' do
  runner "Notify.friday"
end

every :saturday, :at => '7am' do
  runner "Notify.saturday"
end

every :sunday, :at => '7am' do
  runner "Notify.sunday"
end

every :monday, :at => '4pm' do
  runner "Notify.sunday"
end

