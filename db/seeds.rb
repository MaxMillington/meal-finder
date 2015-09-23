# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "Max Millington", email: "MaxMillington89@gmail.com", password: "password")


# Location.create(name: "Project Angel Heart", address: "4950 Washington St. Denver, CO 80216", description: "")
# Location.create(name: "Samaritan House ", address: "2301 Lawrence St, Denver, CO 80205", description: "")






#food-lines

Location.create(name: "Christ Body Ministries", address: "850 Lincoln Street Denver, CO 80203",
description: "Hot meals between 12:30–3 pm Monday, 10 am–3 pm Tuesday through Thursday, 8:30 am–12 pm on Friday. Grocery bags at 16th & York on Saturday starting at 2pm")
Location.create(name: "Holy Ghost Church", address: "1900 California Street Denver, CO",
description: "Provides sandwiches between 10–10:30 am Monday through Saturday")
Location.create(name: "Volunteers of America", address: "2877 Lawrence Street Denver, CO",
description: "Breakfast at 8 am Monday through Thursday. Lunch between 11:30 am through 12 pm Monday through Thursday. Lunch 12 pm on Sunday. Dinner between 5-5:30 pm Monday through Thursday.")
Location.create(name: "Saint Elizabeth’s Church", address: "1060 St Francis Way, Denver, CO 80204",
description: "Provides soup and sandwiches everyday from 11–11:30 am.")
Location.create(name: "Grant Avenue Street Reach ", address: "1600 Grant Street, Denver, CO 80205",
description: "Provides coffee and pastries mid-morning and lunch between 1–5 pm.")
Location.create(name: "Catholic Worker Soup Kitchen", address: "2323 Curtis Street Denver, CO",
description: "Provides lunch between 3 pm and 4 pm Wednesday through Friday. (Except not on the 3rd Wednesday of the month)")
Location.create(name: "Trinity United Methodist Church", address: "1820 Broadway, Denver, CO",
description: "Provides lunch between 11:45 am and 12:15 pm Wednesday through Friday.")
Location.create(name: "Senior Support Services", address: "846 East 18th Ave, Denver, CO",
description: "Provides 11:15 am lunch and 6 pm meal for seniors 55 and older.")
Location.create(name: "Basilica of the Immaculate Conception", address: "1530 Logan St, Denver, CO",
description: "Provides sandwiches at 8 am Monday through Friday.")
Location.create(name: "St. Paul's United Methodist Church", address: "1615 Ogden St, Denver, CO",
description: "Serves breakfast from 8 - 9 am on Sundays.")
Location.create(name: "Denver Rescue Mission", address: "1130 Park Ave W, Denver, CO 80205",
                description: "5:30 am breakfast, 12–12:30 pm lunch and 8 pm dinner every day of the week.")
